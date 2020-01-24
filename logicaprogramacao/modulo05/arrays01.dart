import 'dart:io';

main() {

  var nome = [];
  bool condicao = true;

  while(condicao) {
    stdout.write('Informe um nome: ');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      condicao = false;
      print('Programa Encerrado');
    } else {
      nome.add(text);
    }
    print('Voce digitou $nome');
  }
}