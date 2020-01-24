import 'dart:io';

main(){

bool condicao = true;

  while(condicao){
    stdout.write('Escreva uma palavra qualquer: ');
    String text = stdin.readLineSync();

    if (text == 'sair') {
      condicao = false;
      print('Voce digitou "$text" para FINALIZAR O PROGRAMA...');
      print('=== Programa Finalizado ===\n');
    } else {
      print('Voce digitou $text');
    }
  }
}