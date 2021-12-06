import 'package:animl/animal.dart';

class Cachorro extends Animal {
  late int poste;

  Cachorro(String nome, int idade, double peso, this.poste)
      : super(nome, idade, peso);

  void passear() {
    poste += 1;
    print("O $nome marcou $poste postes");
  }

  @override
  void comer() {
    print("o $nome acabou de comer um bife!");
  }
}

//métodos override
