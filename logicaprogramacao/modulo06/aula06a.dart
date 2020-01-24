// objetivo: modularizando o programa

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
      imprimir(produtos);
      print('\n');
    } else if (text == 'remover') {
      remover(produtos);
    } else {
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H');
      // o código acima (ANSI) irá "limpar a tela" após adicionar o produto...
    }

  }

}

imprimir(produtos){
  for (var i = 0;i < produtos.length; i++) {
    print('ITEM $i : ${produtos[i]}');
  }

}

remover(produtos){
  stdout.writeln('Qual item deseja remover ? ');
  imprimir(produtos);
  stdout.write('ITEM nº ');
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print('ITEM REMOVIDO !');
}