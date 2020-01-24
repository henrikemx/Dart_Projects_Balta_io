/* a linha abaixo, por enquanto, não será utilizada
 * import 'package:estudo/estudo.dart' as estudo;
 * Nesse módulo será tratado sobre "lista de Strings ou argumentos";
 * 
*/


import 'src/cadastro.dart';
import 'src/calc_idade.dart';
import 'src/carrinho_compras.dart';
import 'src/imc.dart';

void main(List<String> arguments) {

  if (arguments[0] == 'calculo-idade'){
    calculoIdade();
  } else if (arguments[0] == 'carrinho-compras') {
    carrinhoCompras();
  } else if (arguments[0] == 'imc') {
    calculoIMC();
  } else if (arguments[0] == 'cadastro') {
    cadastrarPessoa();
  } else {
    print('== Esse programa não existe !! ==');
  }
    
}
