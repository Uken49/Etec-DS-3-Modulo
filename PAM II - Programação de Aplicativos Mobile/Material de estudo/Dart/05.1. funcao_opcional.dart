main() {
  criarBotao("Copiar", cor: "Amarelo", largura: 45.6);
}

void criarBotao(String texto, {String? cor, double? largura}) {
  print(texto);
  print(cor ?? "Azul");
  print(largura ?? 20.0);
}
