import 'Cachorro.dart';

void main(List<String> arguments) {
  Cachorro dog = Cachorro("Spike", 18, 45, 11);

  print(dog.nome);
  dog.comer();
  dog.passear();
}
