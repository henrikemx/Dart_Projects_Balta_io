import 'dart:io';

main() {

  String nome = 'Jacob Moura';
  bool condicao = true;

  while(condicao) {
    stdout.write('Informe um nome: ');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      print('Programa Encerrado');
    } else {
      nome = text;
    }
    print('Voce digitou $nome');
  }
}