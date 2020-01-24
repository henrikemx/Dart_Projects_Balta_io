/* 
Objetivo: modularizar o programa...
Até aqui foi explicado e demonstrado o emprego do usado dos laços de 
repetição "for" e "while", além do uso de "if/else" e "if/else if 
( estrutura de decisão ).
*/

import 'dart:io';
List<String> produtos = [];

main(){

  bool condicao = true;

  while(condicao){
    stdout.write('Adicione um produto: ');
    // a linha abaixo irá receber o valor digitado pelo usuário
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
      /* O método abaixo irá adiconar produtos à lista... */
      produtos.add(text);
      print('\x1B[2J\x1B[0;0H');
      // o código acima (ANSI) irá "limpar a tela" após adicionar o produto...
    }

  }

}


/* Esta FUNÇÃO irá varrer a lista de produtos e exibirá uma listagem 
na tela */
imprimir(){
  for (var i = 0;i < produtos.length; i++) {
    print('ITEM $i : ${produtos[i]}');
  }

}

/* Esta FUNÇÃO irá exibir a lista atual e solicitará qual item 
deseja remover...*/
remover(){
  stdout.writeln('Qual item deseja remover ? ');
  imprimir();
  stdout.write('ITEM nº ');
  /* na linha abaixo, o Dart irá converter a STRING digitada em
  um número inteiro */
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print('ITEM REMOVIDO !');
}