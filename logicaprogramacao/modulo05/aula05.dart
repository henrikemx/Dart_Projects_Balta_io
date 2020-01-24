 // aqui iremos trabalhar co o loop'for
import 'dart:io';

main(){

  bool condicao = true;
  int x = 0;

  while(condicao){
    print('=== Escreva um Texto ===');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      condicao = false;
      print('=== Programa Finalizado ===');
    } else {
      print('=== Voce digitou: $text');
    }
  }

}