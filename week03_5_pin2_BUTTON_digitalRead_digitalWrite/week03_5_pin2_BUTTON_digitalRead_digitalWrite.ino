//week03_5_pin2_BUTTON_digitalRead_digitalWrite
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);//按鈕button 是 2號,沒接下去,就會拉高
  for(int i=3;i<=13;i++){ //把pin 3,4,5,.....,13都設成OUTPUT
    pinMode(i,OUTPUT);// 都是可以發光、發亮的
  }

}
int now = 3; //現在發亮的,是pin3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){ //按下去
    now = now + 1;
    if(now>13) now=3;
    for(int i=3;i<=13;i++){
      digitalWrite(i,LOW);//全部清空、變成LOW不亮
    }

    digitalWrite(now,HIGH);//now 負責亮
    delay(500);//休息一下
  }
}
