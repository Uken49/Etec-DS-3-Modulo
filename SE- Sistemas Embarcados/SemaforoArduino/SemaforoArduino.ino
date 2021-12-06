int carVermelho = 3; //Número da porta
int carAmarelo = 2; //Número da porta
int carVerde = 4; //Número da porta

int pedVermelho = 5; //Número da porta
int pedVerde = 6; //Número da porta


void setup() {
  pinMode(carVerde, OUTPUT); //Recebe informação
  pinMode(carAmarelo, OUTPUT); //Recebe informação
  pinMode(carVermelho, OUTPUT); //Recebe informação
  
  
  pinMode(pedVerde, OUTPUT); //Recebe informação
  pinMode(pedVermelho, OUTPUT); //Recebe informação
  
}

void loop() {
  
  //PEDESTRE - VERMELHO --------------------------------------------
  digitalWrite(pedVermelho, LOW); //Estado desligado
  digitalWrite(pedVermelho, HIGH); //Estado ligado
  
  //CARROS---------------------------------------------
  digitalWrite(carVerde, HIGH); //Estado ligado
  delay(1500); //Atraso de 1 segundo
  digitalWrite(carVerde, LOW); //Estado desligado
  
  digitalWrite(carAmarelo, HIGH); //Estado ligado
  delay(1500); //Atraso de 1 segundo

  for(int i= 1; i<7; i++){
    digitalWrite(pedVermelho, HIGH); //Estado ligado
    delay(250); //Atraso de 1 segundo
    digitalWrite(pedVermelho, LOW); //Estado ligado
    delay(250); //Atraso de 1 segundo
  }

  digitalWrite(carAmarelo, LOW); //Estado desligado
  
  digitalWrite(carVermelho, HIGH); //Estado ligado
  digitalWrite(pedVerde, HIGH); //Estado ligado
  delay(1500); //Atraso de 1 segundo
  
  for(int i= 1; i<7; i++){
    digitalWrite(pedVerde, HIGH); //Estado ligado
    delay(250); //Atraso de 1 segundo
    digitalWrite(pedVerde, LOW); //Estado ligado
    delay(250); //Atraso de 1 segundo
  }
  digitalWrite(carVermelho, LOW); //Estado desligado
  digitalWrite(pedVerde, LOW); //Estado desligado
  


  //PEDESTRES--------------------------------------------
  
  
  
}
