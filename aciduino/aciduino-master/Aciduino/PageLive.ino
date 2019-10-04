/*
[midi controller]
knobs: cutoff freq./decay, resonance/accent, env mod/tunning, tempo

buttons: previous pattern, next pattern, ctrl A/ctrl B, tempo -, tempo +, play/stop
*/
// TODO: implement pickup by value for controllers

uint8_t _selected_ctrl = 0;
// used for led visual feedback on buttons hold action
bool _pattern_saved = false;
bool _pattern_cleared = false;
uint32_t _page_live_blink_timer = 0; 
uint32_t _feedback_blink_timer = 0; 

void processControllerButtons()
{

  // previous pattern
  if ( released(GENERIC_BUTTON_1) ) {
    if ( _selected_pattern != 0 ) {
      lockPotsState(true); 
      // auto save?  
      //savePattern(_selected_pattern);
      loadPattern(--_selected_pattern);    
    }
  }

  // next pattern
  if ( released(GENERIC_BUTTON_2) ) {
    if ( _selected_pattern < PATTERN_NUMBER-1 ) {
      lockPotsState(true);  
      // auto save?
      //savePattern(_selected_pattern);   
      loadPattern(++_selected_pattern);
    }
  }

  // save pattern
  if ( holded(GENERIC_BUTTON_1, 2) ) {
    savePattern(_selected_pattern);
    _pattern_saved = true;
    _feedback_blink_timer = millis();
  }

  // reset and delete pattern
  if ( holded(GENERIC_BUTTON_2, 2) ) {
    resetPattern(_selected_pattern); 
    _pattern_cleared = true;
    _feedback_blink_timer = millis();
  }

  // toogle between ctrl A and ctrl B setup for potentiometers
  if ( pressed(GENERIC_BUTTON_3) ) {
    lockPotsState(true);
    _selected_ctrl = !_selected_ctrl;
  }

  // decrement 1 bpm from tempo
  if ( pressed(GENERIC_BUTTON_4) ) {
    uClock.setTempo(uClock.getTempo()-1);
  }

  // increment 1 bpm from tempo
  if ( pressed(GENERIC_BUTTON_5) ) {
    uClock.setTempo(uClock.getTempo()+1);
  }

}

void processControllerLeds()
{
  static bool blink_state = true;
  
  // blink interface here for button 3 to 5
  if ( millis() - _page_live_blink_timer >= 150 ) {
    blink_state = !blink_state;
    _page_live_blink_timer = millis();
  }

  if ( _pattern_saved == true ) {
    digitalWrite(GENERIC_LED_1 , blink_state);
    if ( millis() - _feedback_blink_timer >= 600 ) {
      _pattern_saved = false;
    }
  }
  else if ( _selected_pattern == 0 ) { // first pattern? // seb todo
    digitalWrite(GENERIC_LED_1 , HIGH);
  }
  else {
    digitalWrite(GENERIC_LED_1 , LOW);
  }

  if ( _pattern_cleared == true ) {
    digitalWrite(GENERIC_LED_2, blink_state);
    if ( millis() - _feedback_blink_timer >= 600 ) {
      _pattern_cleared = false;
    }
  }
  else if ( _selected_pattern == PATTERN_NUMBER-1 ) { // last pattern? 
    digitalWrite(GENERIC_LED_2 , HIGH);
  }
  else {
    digitalWrite(GENERIC_LED_2 , LOW);
  }  
  
  if ( _selected_ctrl == 0 ) {
    digitalWrite(GENERIC_LED_3, LOW);
  }
  else if ( _selected_ctrl == 1 ) {
    digitalWrite(GENERIC_LED_3, HIGH);
  } 

  digitalWrite(GENERIC_LED_4, LOW);
  digitalWrite(GENERIC_LED_5, LOW); 
}

void processControllerPots()
{
  uint16_t value;
  uint8_t ctrl;

#ifdef USE_MIDI_CTRL
  
  // GENERIC_POT_1: cutoff freq./decay
  value = getPotChanges(GENERIC_POT_1, 0, 127);
  if ( value != -1 ) {  
    // send cc
    if ( _selected_ctrl == 0 ) {
      ctrl = MIDI_CTRL_CUTOFF;
    }
    else if ( _selected_ctrl == 1 ) {
      ctrl = MIDI_CTRL_DECAY;
    }
    sendMidiMessage(MIDI_CC, ctrl, value, _sequencer[_selected_track].channel, true);    
  }  

  // GENERIC_POT_2: resonance/accent
  value = getPotChanges(GENERIC_POT_2, 0, 127);
  if ( value != -1 ) {  
    // send cc
    if ( _selected_ctrl == 0 ) {
      ctrl = MIDI_CTRL_RESONANCE;
    }
    else if ( _selected_ctrl == 1 ) {
      ctrl = MIDI_CTRL_ACCENT;
    }
    sendMidiMessage(MIDI_CC, ctrl, value, _sequencer[_selected_track].channel, true);      
  }  

  // GENERIC_POT_3: env mod/wave
  value = getPotChanges(GENERIC_POT_3, 0, 127);
  if ( value != -1 ) {  
    // send cc
    if ( _selected_ctrl == 0 ) {
      ctrl = MIDI_CTRL_ENVMOD;
    }
    else if ( _selected_ctrl == 1 ) {
      ctrl = MIDI_CTRL_WAVE;
    }
    sendMidiMessage(MIDI_CC, ctrl, value, _sequencer[_selected_track].channel, true);     
  }    

#endif  

  // GENERIC_POT_4: sequencer step length/global harmonic mode transpose 
  if ( _selected_ctrl == 0 ) {
    value = getPotChanges(GENERIC_POT_4, 1, STEP_MAX_SIZE);
    if ( value != -1 ) {  
      //clearStackNote(_selected_track);
      ATOMIC(_sequencer[_selected_track].data.step_length = value);
      if ( _step_edit >= _sequencer[_selected_track].data.step_length ) {
        _step_edit = _sequencer[_selected_track].data.step_length-1;
      }      
    }
  }
  else if ( _selected_ctrl == 1 ) {
    value = getPotChanges(GENERIC_POT_4, 0, 24);
    if ( value != -1 ) {  
      //clearStackNote();
      // -12 (0) +12 
      ATOMIC(_transpose = value-12); 
    }  
  }
   
}

