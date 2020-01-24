/**
 * Tema: Cadastro de usuários...
 * Melhorando o código criando um Array de maps para permitir a inclusão
 * de novos registros sem sobrescrever os já existentes.
 * === Paradigma Linear Modular ===
 */

import "dart:io";

// aqui declaramos uma variável do tipo GLOBAL
List<Map<String, dynamic>> cadastros = [];

cadastrarPessoa(){

  bool condicao = true;
  print('\x1b[2j\x1b[0;0h');

  while (condicao) {
    print('== Digite a opção:');
    print('cadastro');
    print('imprimir');
    print('sair');
    stdout.write('\nOpção: ');
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

  // e aqui uma variável do tipo LOCAL  
  Map<String, dynamic> cadastro = {};

  stdout.write('Digite o seu nome: ');
  cadastro['nome'] = stdin.readLineSync();
  stdout.write('Digite sua idade: ');
  cadastro['idade'] = int.parse(stdin.readLineSync());
  stdout.write('Digite a cidade: ');
  cadastro['cidade'] = stdin.readLineSync();
  stdout.write('Digite o Estado: ');
  cadastro['estado'] = stdin.readLineSync();
  cadastros.add(cadastro);

}

imprimir(){
  /*
  print('\n=== Dados Cadastrados ===');
  print('Nome: ' + cadastro['nome']);
  print('Idade: ' + cadastro['idade'].toString());
  print('Cidade: ' + cadastro['cidade']);
  print('Estado: ' + cadastro['estado']);
  */
  print(cadastros);
}