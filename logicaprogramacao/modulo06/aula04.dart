// objetivo: remover itens da lista

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
      for (var i = 0;i < produtos.length; i++) {
        print('ITEM $i : ${produtos[i]}');
      }
      print('\n');
    } else if (text == 'remover') {
      stdout.write('Qual item deseja remover ? ');
      /*
      for (var i = 0;i < produtos.length; i++) {
        print('ITEM $i : ${produtos[i]}');
      }*/
      int item = int.parse(stdin.readLineSync());
      produtos.removeAt(item);
      print('ITEM REMOVIDO !');
    } else {
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H');
      // o código acima (ANSI) irá "limpar a tela" após adicionar o produto...
    }

  }

}