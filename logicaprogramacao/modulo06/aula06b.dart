/* 
Objetivo: modularizar o programa...
1) Nesse exemplo, é demonstrado como reduzir o código mediante sua
subdivisão em módulos;
2) A diferença de quando empregar variáveis "locais" e "globais";
*/

import 'dart:io';
List<String> produtos = [];

main(){

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