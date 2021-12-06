class Animal {
  late String nome;
  late int idade;
  late double peso;

  void fazerSom() {
    print("$nome fez um barulho");
  }

  void comer() {
    print("$nome acabou de comer uma banana!");
  }

  //Construtor classe Animal
  Animal(this.nome, this.idade, this.peso);
}
