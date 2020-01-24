// aqui iremos trabalhar com Arrays
import 'dart:io';

main(){
  List<String> nomes = ['Jacob Moura', 'Luiza Moura', 'Sara Moura', 'Jordana Moura'];
  nomes.add('Euridice Moura');
  nomes.add('André Moura');

  print(nomes);

  nomes.remove('Luiza Moura');
  print(nomes);

  nomes.removeAt(2);
  print(nomes);

}