
#include <Ultrasonic.h>
int in1 = 3; //frente esq.
int in2 = 5; //frente dir.
int in3 = 6; //ré esq.
int in4 = 9; //ré dir
int sensorEsq = 8; //sensor Esquerdo
int sensorDir = 2; //sensor Direito

Ultrasonic ultrassom(A0,A1);

long distancia;

void setup() {
  Serial.begin(9600);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
  pinMode(sensorEsq, INPUT);
  pinMode(sensorDir, INPUT);
  Serial.begin(9600);
}

void loop() {
  sensorEsq = digitalRead(8);
  sensorDir = digitalRead(2);
//  Serial.println(sensorEsq);
//  Serial.println(sensorDir);
  
//  distancia = ultrassom.Ranging(CM);

 if(sensorEsq == 0 && sensorDir == 0){
    frente();
  }
  if(sensorEsq == 0 && sensorDir == 1){
    virarEsq();
  }
  if(sensorEsq == 1 && sensorDir == 0){
    virarDir();
  }
  
// if(distancia<=20){
//    virar();
//  }else{
//    frente();
//  }
//  Serial.println(distancia);
//  Serial.println("cm");
//  delay(1000);
//
//  Serial.println(sensorEsq);
//  Serial.println(sensorDir);
//  delay(1000);
}

void frente(){
  analogWrite(in1, 40); //frente
  analogWrite(in2, 45); //frente
  analogWrite(in3, 0); //ré
  analogWrite(in4, 0); //ré
}

void re(){
  analogWrite(in1, 0); //frente
  analogWrite(in3, 0); //frente
  analogWrite(in4, 100); //ré
  analogWrite(in2, 100); //ré
}

void virarEsq(){
  analogWrite(in1, 35); //frente
  analogWrite(in3, 0); //frente
  analogWrite(in4, 0); //ré
  analogWrite(in2, 0); //ré
}
void virarDir(){
  analogWrite(in1, 0); //frente
  analogWrite(in3, 35); //frente
  analogWrite(in4, 0); //ré
  analogWrite(in2, 0); //ré
}

