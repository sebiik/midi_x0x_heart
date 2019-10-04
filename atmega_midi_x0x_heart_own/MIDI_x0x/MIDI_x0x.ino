#include <MIDI.h>
#include <AH_MCP4922.h>
#include <EEPROM.h>

#define GATE_PIN 2
#define GATE_LED A5

//#define ENV_MOD_CTRL 1
//#define ENV_MOD_PIN 3

//#define CUTOFF_CTRL 74
//#define CUTOFF_PIN 6

#define SAW_CTRL 70
#define SAW_PIN 5
#define SQR_CTRL 71
#define SQR_PIN 9

#define SLIDE_CTRL 65
#define SLIDE_TIME_CTRL 5
#define SLIDE_IN_PIN 13
#define SLIDE_OUT_PIN 12

//#define DECAY_CTRL 72
//#define DECAY_PIN 11

#define ACCENT_CTRL 11
#define ACCENT_PIN 10

//#define RES_CTRL 2
//#define RES_POT_PIN A4

#define ALL_NOTES_OFF 123
#define CTRL_RESET 121

AH_MCP4922 PitchDac(A1,A2,A3,LOW,LOW);

// Velocity gets assigned to the analog cutoff voltage because
// the PWM pins have some latency. Whatever velocity controls cannot
// afford latency since the note is beginning simultaneously.
//AH_MCP4922 CutoffDac(A1,A2,A3,HIGH,LOW);

int liveNoteCount = 0;
int pitchbendOffset = 0;
float baseNoteFrequency;

byte deviceID;

// these hold the current settings
byte sawLevel, squareLevel;

MIDI_CREATE_DEFAULT_INSTANCE();


void handleNoteOn(byte channel, byte pitch, byte velocity)
{
  liveNoteCount++;

  //baseNoteFrequency = (pitch - 12) * 42;
  baseNoteFrequency = (pitch - 36.0) * 36.665;
  PitchDac.setValue(baseNoteFrequency + pitchbendOffset);

  //set gate pin
  digitalWrite(GATE_PIN, HIGH);
  digitalWrite(GATE_LED, HIGH);

  // set accent pin
  if (velocity >= 120)
  {
    digitalWrite(ACCENT_PIN, HIGH);
  }
  else
  {
    digitalWrite(ACCENT_PIN, LOW);
  }

  // set slide pins
  if (liveNoteCount > 1)
  {
    digitalWrite(SLIDE_IN_PIN, HIGH);
    digitalWrite(SLIDE_OUT_PIN, LOW);
  }
}


void handleNoteOff(byte channel, byte pitch, byte velocity)
{
  liveNoteCount--;

  // clear gate and accent pins
  if (liveNoteCount <= 0)
  {
    analogWrite(ACCENT_PIN, LOW);
    digitalWrite(GATE_PIN, LOW);
    digitalWrite(GATE_LED, LOW);
  }

  // clear slide pins
  if (liveNoteCount <= 1)
  {
    digitalWrite(SLIDE_IN_PIN, LOW);
    digitalWrite(SLIDE_OUT_PIN, HIGH);
  }
}

void handleControlChange(byte channel, byte number, byte value)
{
  int scaledValue = int(value) << 1;

  switch (number)
  {

    // case CUTOFF_CTRL:
    //   CutoffDac.setValue(value << 5);
    //   cutoff = value;
    //   break;

    case SAW_CTRL:
      analogWrite(SAW_PIN, scaledValue);
      sawLevel = value;
      break;

    case SQR_CTRL:
      analogWrite(SQR_PIN, scaledValue);
      squareLevel = value;
      break;

    case ACCENT_CTRL:
      analogWrite(ACCENT_PIN, scaledValue);
      break;

    case SLIDE_CTRL:
      if (value >= 64)
      {
        digitalWrite(SLIDE_IN_PIN, HIGH);
        digitalWrite(SLIDE_OUT_PIN, LOW);
      } else {
        digitalWrite(SLIDE_IN_PIN, LOW);
        digitalWrite(SLIDE_OUT_PIN, HIGH);
      }
      break;

    case ALL_NOTES_OFF:
      liveNoteCount = 0;
      handlePitchBend(deviceID, 0);
      digitalWrite(GATE_PIN, LOW);
      digitalWrite(GATE_LED, LOW);
      digitalWrite(ACCENT_PIN, LOW);
      digitalWrite(SLIDE_IN_PIN, LOW);
      digitalWrite(SLIDE_OUT_PIN, HIGH);
      break;
  }

}


void handlePitchBend(byte channel, int bend)
{
  pitchbendOffset = bend >> 4;
  PitchDac.setValue(baseNoteFrequency + pitchbendOffset);
}


void handleSystemExclusive(byte message[], unsigned size)
{

  if (message[1] != 0x77) return;      // manufacturer ID
  if (message[2] != 0x33) return;      // model ID
  if (message[3] != deviceID) return;  // device ID as set with trim pot

  switch (message[4])
  {
    case 0x00:
      setMidiChannel(message[5]);
      break;

    case 0x01:
      sendPatchDump();
      break;

    case 0x02:
      receivePatchDump(message);
      break;

    case 0x11:
      saveProgram(message[5]);

    default:
      break;
  }
}


void saveProgram(char progNumber)
{
  int offset = 2 * progNumber;
  EEPROM.update(offset++, sawLevel);
  EEPROM.update(offset, squareLevel);
}


void handleProgramChange(byte channel, byte number)
{

  int offset = 2 * number;
  sawLevel = EEPROM.read(offset++);
  squareLevel = EEPROM.read(offset);
}


void sendPatchDump()
{
  byte sysexArray[] = { 0xf0, 0x77, 0x33, deviceID, 0x02, 0,0, 0xf7 };
  int paramByte = 5;
  sysexArray[paramByte++] = sawLevel;
  sysexArray[paramByte] = squareLevel;
  MIDI.sendSysEx(9, sysexArray, true);
}


void receivePatchDump(byte message[])
{
  int paramByte = 5;
  handleControlChange(deviceID, SAW_CTRL, message[paramByte++]);
  handleControlChange(deviceID, SQR_CTRL, message[paramByte]);
}


void setMidiChannel(byte newChannel)
{
  MIDI.begin(newChannel % 17);
  playScale(newChannel % 17);
}

// ----------------------------------------------------------------------------

void setup()
{
    //int channelSpan = 1024 / 16;
    //int channelInput = analogRead(0);
    //deviceID = channelInput / channelSpan;
// hardcode to midi channel 1 for now
    deviceID = 0;

    pinMode(GATE_PIN, OUTPUT);
    digitalWrite(GATE_PIN, LOW);
    pinMode(GATE_LED, OUTPUT);
    digitalWrite(GATE_LED, LOW);

    digitalWrite(SLIDE_IN_PIN, OUTPUT);
    digitalWrite(SLIDE_IN_PIN, LOW);
    digitalWrite(SLIDE_OUT_PIN, OUTPUT);
    digitalWrite(SLIDE_OUT_PIN, HIGH);

    pinMode(SAW_PIN, OUTPUT);
    digitalWrite(SAW_PIN, HIGH);
    sawLevel = 127;

    pinMode(SQR_PIN, OUTPUT);
    digitalWrite(SQR_PIN, LOW);
    squareLevel = 0;

    pinMode(ACCENT_PIN, OUTPUT);
    digitalWrite(ACCENT_PIN, LOW);

    TCCR0B = (TCCR0B & 0b11111000) | 0x01;
    TCCR1B = (TCCR1B & 0b11111000) | 0x01;
    TCCR2B = (TCCR2B & 0b11111000) | 0x01;

    delay(1000);

    playScale(deviceID);

    // calibrate 8V
    //baseNoteFrequency = (108 - 12) * 42;
    baseNoteFrequency = 0;
    PitchDac.setValue(baseNoteFrequency);

    // calibrate full cutoff
    //CutoffDac.setValue(32 * 127);
    //cutoff = 127;

    MIDI.setHandleNoteOn(handleNoteOn);
    MIDI.setHandleNoteOff(handleNoteOff);
    MIDI.setHandlePitchBend(handlePitchBend);
    MIDI.setHandleControlChange(handleControlChange);

    MIDI.setHandleSystemExclusive(handleSystemExclusive);
    MIDI.setHandleProgramChange(handleProgramChange);

    MIDI.begin(deviceID);
    MIDI.turnThruOff();
}


void playScale(int channel)
{
  int note = 60;
  for (int i=0; i<channel; i++) {

      handleNoteOn(channel, note, 100);
      delay(5000);
      handleNoteOff(channel, note, 100);
      delay(5000);
      note++;
  }
}


void loop()
{
  MIDI.read();
}
