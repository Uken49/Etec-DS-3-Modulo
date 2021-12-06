import 'dart:io';

main() {

  int dia,mes=0,ano=0;
  
  dia=int.parse(stdin.readLineSync());
  
  while(dia>=365){
    dia=dia-365;
    ano++;
  }
  while(dia>=30) {
    dia-=dia-30;
    mes++;
  }
  print('$ano ano(s)');
  print('$mes mes(es)');
  print('$dia dias(s)');
}