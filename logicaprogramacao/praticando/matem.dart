import 'dart:async';
// import 'dart:math';
// import 'dart:io';

main() {
  /*
  print("\x1B[2J\x1B[0;0H");
  print('O valor de pi é $pi');
  print('O logaritmo de 10 é $log10e');
  print('A raiz quadrada de 2 é $sqrt2');
  // print('\n');

  print('10 elevado a 2 = ${pow(10, 2)}');
  print('Raiz quadrada de 256 é: ${sqrt(256)}');
  print('Log de 35: ${log(35)}');
  print('Temos 2 numeros 10 e 125. O maior é ${max(10, 125)} e o menor é ${min(10, 125)}');
  print('Gerando números randomicos entre 1 e 5...');
  Random random = Random();
  print('Escolhido o número: ${random.nextInt(5)+1}');
  // print('Informe um nome: ${stdin.readLineSync()}');
  stdout.write('Informe um nome: ');
  var nome = stdin.readLineSync();
  print('Voce digitou: $nome');
  
  DateTime date = DateTime.now();
  DateTime time = DateTime.now();
  print('Hoje é: ${date.day}/${date.month}/${date.year} * ${time.hour}:${time.minute}:${time.second}');
  */

  while(true){
    DateTime time = DateTime.now();
    var timer = Timer(Duration(seconds: 1), () => 
    print('${time.hour}:${time.minute}:${time.second}'));
    }
}

