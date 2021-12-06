import 'package:animl/cachorro.dart';

void main(List<String> arguments) {
  Cachorro dog = Cachorro("Spike", 5, 9.350, 10);

  print(dog.nome);
  dog.comer();
  dog.passear();
}
