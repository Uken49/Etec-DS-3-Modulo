import 'dart:io';

main() {
  double num1;
  double num2;
  print("Digite o primeiro valor:");
  num1 = double.parse(stdin.readLineSync()!);
  print("\nDigite o segundo valor:");
  num2 = double.parse(stdin.readLineSync()!);

  double media = calcularMedia(
      num1, num2); //função calcularMedia com parametros e com retorno
  print("Sua nota é $media");
  imprimirResultado(
      media); //função imprimirResultado com parametro e sem retorno

  //resultado = num1 + num2;
  //print("\nO resultado da soma é: $resultado");
  /*
  print("Digite o primeiro valor:");
  num1 = double.parse(stdin.readLineSync()!);
  print("\nDigite o segundo valor:");
  num2 = double.parse(stdin.readLineSync()!);
  */
}
//FUNÇÃO SEM PARÂMETROS E SEM RETORNO
/*soma() {
  //declaração variaveis
  double num1;
  double num2;
  double resultado;

  print("Digite o primeiro valor:");
  num1 = double.parse(stdin.readLineSync()!);
  print("\nDigite o segundo valor:");
  num2 = double.parse(stdin.readLineSync()!);
  resultado = num1 + num2;
  print("\nO resultado da soma é: $resultado");
}*/

//FUNÇÃO COM RETORNO E COM PASSAGEM DE PARÂMETROS
double calcularMedia(double num1, double num2) {
  return (num1 + num2) / 2;
}

//FUNÇÃO SEM RETORNO E COM PASSAGEM DE PARÃMETROS
imprimirResultado(double resultado) {
  //verificar se o aluno será aprovado ou reprovado
  if (resultado < 6) {
    print("Reprovado");
  } else if (resultado >= 6) {
    print("Aprovado");
  }
}
