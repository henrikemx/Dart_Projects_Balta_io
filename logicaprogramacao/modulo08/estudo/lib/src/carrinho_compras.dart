/* 
Objetivo: modularizando o programa... 
Este script irá apresentar erro,o qual será demonstrado na próxima 
aula como corrigí-lo. Portanto, não cabe aqui a correção do mesmo.
*/

import 'dart:io';

List<String> produtos = [];

carrinhoCompras(){

  bool condicao = true;

  while(condicao){
    // print('==== Adicione um Produto ====');
    stdout.write('Adicione um produto: ');
    String text = stdin.readLineSync();
    if (text == 'sair'){
      print('==== Programa Finalizado ====');
      condicao = false;
    } else if (text == 'imprimir'){
      imprimir();
      print('\n');
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H');
      // o código acima (ANSI) irá "limpar a tela" após adicionar o produto...
    }

  }

}

imprimir(){

  for (var i = 0;i < produtos.length; i++) {
    print('ITEM $i : ${produtos[i]}');

  }

}

remover(){

  stdout.writeln('Qual item deseja remover ? ');
  imprimir();
  stdout.write('ITEM nº ');
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print('ITEM REMOVIDO !');

}
