import 'dart:io';


calculoIdade(){

  // pergunta a idadeda pessoa
  // se a idade for maior ou igual a 18
  // se ele for maior de idade
  // se não for
  // ele não é maior de idade

  // print('==== Digite uma idade válida =====');
  stdout.write('Digite uma idade válida: ');
  var input = stdin.readLineSync();

  var idade = int.parse(input);
  
  if (idade >= 50){
    print('Melhor idade...');
  } else if (idade >= 18) {
    print('Adulto...');
  } else if (idade >= 12) {
    print('Adolescente...');
  } else {
    print('Criança....');
  }


}