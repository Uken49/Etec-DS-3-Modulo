int sensor1 = 2;
int sensor2 = 8;


void setup() {
  // put your setup code here, to run once:
pinMode (sensor1,INPUT);
pinMode (sensor2,INPUT);

Serial.begin(9600);
}
void loop() {
  // put your main code here, to run repeatedly:
sensor1 = digitalRead(2);
sensor2 = digitalRead(8);


Serial.println(sensor1);
delay(500);
}
