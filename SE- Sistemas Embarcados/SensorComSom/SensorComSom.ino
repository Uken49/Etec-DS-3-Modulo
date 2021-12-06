#include <Ultrasonic.h>

Ultrasonic ultrassom(A0,A1);
long distancia;

void setup() {
  Serial.begin(9600);
}

void loop() {
  distancia = ultrassom.Ranging(CM);

  Serial.print(distancia);
  Serial.println("cm");
  delay(200);
}
