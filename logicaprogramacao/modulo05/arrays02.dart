import 'dart:io';

main() {

  var nomes = ['Jacob Moura', 'Luiza Moura', 'Sara Moura'];
  print(nomes);
  print('O Array possui ${nomes.length} elementos');
  stdout.write('Digite um nome: ');
  nomes.add(stdin.readLineSync());
  print(nomes);
  print('O Array possui ${nomes.length} elementos');

  for (var i = 0; i < nomes.length; i++){
    print('ID $i : ${nomes[i]}');
  }

  stdout.write('Qual deseja apagar ? ');
  var x = int.parse(stdin.readLineSync());
  nomes.removeAt(x);

  print('A Lista agora contém os nomes: $nomes e possui ${nomes.length} elementos.');

}