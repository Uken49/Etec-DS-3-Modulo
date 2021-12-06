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

  Pessoa(this.nome, this.idade, this.peso);
}

main() {
  // Pessoa pessoa1 = new Pessoa();
  // pessoa1.nome = "João";
  // pessoa1.idade = 17;
  // pessoa1.peso = 63.5;

  // print(pessoa1.nome);
  // print(pessoa1.idade);
  // print(pessoa1.peso);
  // pessoa1.comer();
  Pessoa pessoa1 = Pessoa("Pedro", 35, 89.7);

  print(pessoa1.idade);
  pessoa1.dormir();
}
