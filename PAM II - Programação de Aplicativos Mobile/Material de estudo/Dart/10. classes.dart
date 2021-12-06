class Pessoa {
  late String nome;
  late int idade;
  late double peso;

  void dormir() {
    print("$nome está dormindo");
  }

  void comer() {
    print("$nome está comendo");
  }

  //Exemplo 1 - Construtor
  /*Pessoa(String nome, int idade, double peso) {
    this.nome = nome;
    this.idade = idade;
    this.peso = peso;
  }*/

  //Exemplo 2 - Construtor
  Pessoa(this.nome, this.idade, this.peso);
}

main() {
  Pessoa pessoa1 = Pessoa("Pedro", 35, 89.7);

  print(pessoa1.idade);
  pessoa1.dormir();
}
