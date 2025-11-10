 //week10_2_arduino_pin2_switch_tone_8_523_784_delay100
void setup() {
  pinMode(2,INPUT_PULLUP);
  
}

void loop() {
  tone(8,523,100);
  delay(100);
  tone(8,784,100);
  delay(100);
}
