import 'dart:io';

main() {

  int seg,min=0,hrs=0;
  
  seg=int.parse(stdin.readLineSync());
  
  while(seg>=60){
    seg=seg-60;
    min++;
  }
  while(min>=60) {
    min=min-60;
    hrs++;
  }
  print('$hrs:$min:$seg');
}