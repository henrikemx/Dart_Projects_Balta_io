import 'dart:io';

main() {

  print('\x1B[2J\x1B[0;0H');
  calcIMC();

}

calcIMC(){

  stdout.write('Informe o peso: ');
  var peso = double.parse(stdin.readLineSync());

  stdout.write('Informe a altura: ');
  var altura = double.parse(stdin.readLineSync());

  var imc = peso / (altura * altura);
   
  resultado(imc);

}

resultado(imc){

stdout.write('\nResultado: ');

  if (imc < 18.5){
    print('abaixo do peso...\n');
  } else if (imc > 18.5 && imc < 24.9) {
    print('normal...\n');
  } else if(imc > 25 && imc < 29.9) {
    print('acima do peso...\n');
  } else if(imc > 30 && imc < 34.9) {
    print('obesidade grau 1...\n');
  } else if(imc > 35 && imc < 39.9) {
    print('obesidade grau 2...\n');
  } else {
    print('obesidade grau 3...\n');
  }

  double varPerc;

  if (imc >= 18.5) {
    varPerc = ((imc - 18.5) / 18.5) * 100;
  } else {
    varPerc = ((18.5 - imc) / imc) * 100;
  }


  if (imc >= 18.5){
    print('O indivíduo se encontra ${varPerc.toStringAsPrecision(4)} % acima do peso...\n');
  } else {
    print('O indivíduo se encontra ${varPerc.toStringAsPrecision(4)} % abaixo do peso...\n');
  }
}
