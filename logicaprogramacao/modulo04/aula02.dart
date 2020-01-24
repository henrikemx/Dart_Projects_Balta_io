import 'dart:io';

// este script irá calcular o valor do IMC de um indivíduo

main(){

  calculoIMC();
  
}

calculoIMC(){

  // digitar o peso e a altura do individuo
  // realizar o calculo
  // exibir i resultado no console

  print('=== Digite seu peso ===');
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso);

  print('=== Digite sua altura ===');
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura);

  var imc = peso / (altura * altura);

  // print('===== Seu IMC ==== ');
  // print(imc);

  imprimirResultado(imc);
  
}

imprimirResultado(imc){

  print('===== A V I S O ==== ');

  if (imc < 18.5){
    print('Está abaixo do peso...\n');
  } else if (imc > 18.5 && imc < 24.9) {
    print('Peso Ideal...\n');
  } else if(imc > 25 && imc < 29.9) {
    print('Está acima do peso...\n');
  } else if(imc > 30 && imc < 34.9) {
    print('Obesidade grau 1...\n');
  } else if(imc > 35 && imc < 39.9) {
    print('Obesidade grau 2...\n');
  } else {
    print('Obesidade grau 3...\n');
  }

}