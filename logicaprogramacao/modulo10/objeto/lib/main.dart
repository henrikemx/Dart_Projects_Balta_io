import 'src/pessoa.dart';
import 'dart:io';

Pessoa pessoa = Pessoa();

void main(List<String> arguments) {

  stdout.write('Informe o nome: ');
  pessoa.nome = stdin.readLineSync();

  stdout.write('informe a idade: ');
  pessoa.idade = int.parse(stdin.readLineSync());

  stdout.write('Informe a altura: ');
  pessoa.altura = double.parse(stdin.readLineSync());

  stdout.write('Informe o peso: ');
  pessoa.peso = double.parse(stdin.readLineSync());
 
  print('=======================================\n');
  print('Nome: ${pessoa.nome}');
  print('IMC: ${pessoa.imc()}');
  print('É maior de idade ? [${pessoa.maiorIdade()? 'Sim' : 'Não'}]');

  
}
