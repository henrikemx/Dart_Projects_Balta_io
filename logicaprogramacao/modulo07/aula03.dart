/**
 * Tema: Cadastro de usuários...
 * 
 */

import "dart:io";

Map<String, dynamic> cadastro = {};

main(){

  stdout.write('Digite o seu nome: ');
  String nome = stdin.readLineSync();
  cadastro['nome'] = nome;
  stdout.write('Digite sua idade: ');
  String idade = stdin.readLineSync();
  cadastro['idade'] = int.parse(idade);
  stdout.write('Digite a cidade: ');
  String cidade = stdin.readLineSync();
  cadastro['cidade'] = cidade;
  stdout.write('Digite o Estado: ');
  String estado = stdin.readLineSync();
  cadastro['estado'] = estado;

  print('\n=== Dados Cadastrados ===');
  print('Nome: ' + cadastro['nome']);
  print('Idade: ' + cadastro['idade'].toString());
  print('Cidade: ' + cadastro['cidade']);
  print('Estado: ' + cadastro['estado']);

}