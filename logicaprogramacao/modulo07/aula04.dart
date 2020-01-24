/**
 * Tema: Cadastro de usuários...
 * Simplificando o código...
 * 
 */

import "dart:io";

Map<String, dynamic> cadastro = {};

main(){

  bool condicao = true;
  print('\x1b[2j\x1b[0;0h');

  while (condicao) {
    print('== Escolha uma ação ==');
    String comando = stdin.readLineSync();
    if (comando == 'sair') {
      print('=== Programa Finalizado ===');
      condicao = false;
    } else if (comando == 'cadastro') {
      print('\x1b[2j\x1b[0;0h');
      cadastrar();
    } else if (comando == 'imprimir') {
      imprimir();
    } else {
      print('Esse comando não existe !!');
    }
    print('\x1b[2j\x1b[0;0h');
  }
}

cadastrar(){
  
  stdout.write('Digite o seu nome: ');
  cadastro['nome'] = stdin.readLineSync();
  stdout.write('Digite sua idade: ');
  cadastro['idade'] = int.parse(stdin.readLineSync());
  stdout.write('Digite a cidade: ');
  cadastro['cidade'] = stdin.readLineSync();
  stdout.write('Digite o Estado: ');
  cadastro['estado'] = stdin.readLineSync();
}

imprimir(){

  print('\n=== Dados Cadastrados ===');
  print('Nome: ' + cadastro['nome']);
  print('Idade: ' + cadastro['idade'].toString());
  print('Cidade: ' + cadastro['cidade']);
  print('Estado: ' + cadastro['estado']);

}