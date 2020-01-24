import 'dart:io';


main(){

  List<String> produtos = [];
  bool condicao = true;
  print('==== Lista de Produtos ====');
  print('''==== Digite: 
    "sair" para encerrar 
    "imprimir" para exibir a lista
    "adicionar" para adicionar um Item
    "remover" para remover um Item''');

  while(condicao){

    stdout.write('Escolha uma opção: ');
    String text = stdin.readLineSync();
    if (text == 'sair'){
      print('==== Programa Finalizado ====');
      condicao = false;
    } else if (text == 'imprimir'){
      for (var i = 0; i < produtos.length; i++){
        print('ITEM $i : ${produtos[i]}');
      }
    } else if (text == 'remover') {
      print('Qual produto deseja remover ?');
      for (var j = 0; j < produtos.length; j++){
        print('ITEM $j : ${produtos[j]}');
      }
      stdout.write('ITEM nº ');
      int item = int.parse(stdin.readLineSync());
      produtos.removeAt(item);
      print('Item removido com SUCESSO !');
    } else {
      produtos.add(text);
      print('\x1b[0;0H\x1b[2J');
    }
  }
}
