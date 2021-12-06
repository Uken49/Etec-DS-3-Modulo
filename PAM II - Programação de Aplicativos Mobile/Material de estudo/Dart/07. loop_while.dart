main() {
  bool condicao = true;

  int x = 0;
  int z = 0;

  while (condicao) {
    print("esse código rodou $x");
    if (x > 9) {
      condicao = false;
    }
    x++;
  }

  do {
    print("esse código rodou $z");
    z++;
  } while (z <= 20);
}
