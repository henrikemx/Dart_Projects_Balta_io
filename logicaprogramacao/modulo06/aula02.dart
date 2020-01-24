import 'dart:io';


main(){

  List<String> produtos = [];
  bool condicao = true;

  while(condicao){
    // print('==== Adicione um Produto ====');
    stdout.write('Adicione um produto: ');
    String text = stdin.readLineSync();
    if (text == 'sair'){
      print('==== Programa Finalizado ====');
      condicao = false;
    } else if (text == 'imprimir'){
      print(produtos);
      print('\n');
    } else {
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H');
      // o código acima (ANSI) irá "limpar a tela" após adicionar o produto...
    }

  }

}