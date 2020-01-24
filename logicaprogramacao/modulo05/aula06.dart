// aqui iremos trabalhar com Arrays
import 'dart:io';

main(){
  var nome = [];

  bool cond = true;

  while(cond){
    print('Digite um nome: ');
    String text = stdin.readLineSync();
    if (text == 'sair'){
      print('=== Programa Finalizado ===');
      cond = false;
    } else {
      nome.add(text);
    }

    print(nome);
    print('\n');

  }

}