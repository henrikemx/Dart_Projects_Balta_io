import 'dart:io';

List cesta = [];
bool condicao = true;
String resp;

main(){
  
  while(condicao){

    limparTela();
    stdout.write('Informe um produto: ');
    cesta.add(stdin.readLineSync());
    stdout.write('Deseja continuar ? [S/N] ');
    resp = stdin.readLineSync();

    if (resp == 'n'){
      listarProdutos();
      print('\n=== Programa Finalizado ===');
      break;
    } else {
      limparTela();
    }

    }
}

limparTela(){
  print('\x1B[2J\x1B[0;0H');
}

listarProdutos(){
  limparTela();
  print('=== Lista de Produtos ===');
  for (var i = 0; i < cesta.length; i++){
    print('Item ${i + 1} : ${cesta[i]}');
    //print(cesta);
  }
}