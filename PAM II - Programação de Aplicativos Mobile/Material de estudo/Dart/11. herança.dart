class Animal {
  late String nome;
  late int idade;
  late double peso;

  void fazerSom() {
    print("$nome fez um barulho");
  }

  void comer() {
    print("$nome acabou de comer!");
  }

  //Construtor classe Animal
  Animal(this.nome, this.idade, this.peso);
}

class Cachorro extends Animal {
  late int poste;

  Cachorro(String nome, int idade, double peso, this.poste)
      : super(nome, idade, peso);

  void passear() {
    poste += 1;
  }
}

main() {}
