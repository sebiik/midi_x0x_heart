#include <MIDI.h>

#include <AH_MCP4922.h>

AH_MCP4922 PitchDac(A1,A2,A3,LOW,LOW);

float baseNoteFrequency = 0;

int pitchbendOffset = 0;