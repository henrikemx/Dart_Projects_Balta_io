class Pessoa {

  String nome;
  int idade;
  double altura;
  double peso;

  // metodo para calcular o IMC, tradicional
  /*
  double imc(){
    return peso / (altura * altura);
  }
  */

  // outra forma de codificar com "Arrow Function"...
  double imc() => peso / (altura * altura);

  // metodo para identificar a idade, tradicional
  /*
  bool maiorIdade(){
    return idade >= 18;
  }
  */

  // outra forma de codificar com "Arrow Function"...
  bool maiorIdade() => idade >= 18;

}