#include <Servo.h>
int pot= 0;
Servo servo;

void setup() {
  Serial.begin(9600);
  servo.attach(3);
  servo.write(0);
  
}

void loop() {
  pot = analogRead(A0);
  //pot = map(pot,0,1023,0,180);
  servo.write(360);
  delay(500);
  servo.write(90);
  delay(500);
  servo.write(180);
  delay(500);
  servo.write(270);
  delay(500);

  
  
  
  Serial.print(pot);
  Serial.println(" - Potência");
  delay(1000);
}
