import 'dart:io';

// este script irá calcular o valor do IMC de um indivíduo

calculoIMC(){

  // digitar o peso e a altura do individuo
  // realizar o calculo
  // exibir i resultado no console

  // print('=== Digite seu peso ===');
  stdout.write('Digite seu peso: ');
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso);

  // print('=== Digite sua altura ===');
  stdout.write('Digite sua altura: ');
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura);

  var imc = peso / (altura * altura);

  // print('===== Seu IMC ==== ');
  // print(imc);

  // print('===== A V I S O ==== ');
  stdout.write('\nResultado: ');

  if (imc < 18.5){
    print('Está abaixo do peso...');
  } else if (imc > 18.5 && imc < 24.9) {
    print('Peso Ideal...\n');
  } else if(imc > 25 && imc < 29.9) {
    print('Está acima do peso...');
  } else if(imc > 30 && imc < 34.9) {
    print('Obesidade grau 1...');
  } else if(imc > 35 && imc < 39.9) {
    print('Obesidade grau 2...');
  } else {
    print('Obesidade grau 3...');
  }
}