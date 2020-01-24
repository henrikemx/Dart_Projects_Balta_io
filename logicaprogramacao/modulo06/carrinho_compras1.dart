/**
 * Este arquivo foi criado baseado no modulo 06 sobre MODULARIZAÇÃO.
 * Se houver divergência no código abaixo e o que foi passado durante
 * as videos aulas, este código foi modificado com base em algumas
 * variantes a permitir uma visualização melhor da saída na tela do
 * console.
 * Obs.: em parte foi usado os conhecimentos adquiridos em cursos como
 * o de JavaScript e Python.
 */

import 'dart:io';

List<String> produtos = []; // variável GLOBAL do tipo "Lista de Strings"

main(){

  bool condicao = true;
  print('==== Lista de Produtos ====');
  print('''==== Digite: 
    adicione o Item e tecle Enter
    "sair" para encerrar 
    "imprimir" para exibir a lista
    "remover" para remover um Item''');

  while(condicao){

    stdout.write('Escolha uma opção: '); // exibe uma mensagem sem mudar de linha
    String text = stdin.readLineSync(); // exemplo de variável LOCAL/PRIVADAS
    if (text == 'sair'){
      print('==== Programa Finalizado ====');
      condicao = false;
    } else if (text == 'exibir'){
      exibir(); // aqui é uma função, e não um "objeto"
    } else if (text == 'remover') {
      remover();
    } else {
      produtos.add(text);
      print('\x1b[2J\x1b[0;7H'); // sua funçção é a de "limpar" a tela e posicionar o curso para o inicio.
    }
  }
}

exibir(){
  print('\x1b[2J\x1b[0;7H');
  for (var i = 0; i < produtos.length; i++){
    print('ITEM $i : ${produtos[i]}');
  }
}

// remove o Item baseado no seu ID
remover(){
  print('\x1b[2J\x1b[0;7H');
  print('Qual produto deseja remover ?');
  exibir();
  stdout.write('ITEM nº ');
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  exibir();
  print('Item removido com SUCESSO !');
}