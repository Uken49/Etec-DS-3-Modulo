import 'Animal.dart';

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
    print("$nome acabou de ração!");
  }
}
