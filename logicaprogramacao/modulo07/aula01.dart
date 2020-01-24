/**
 * Map... Listas... é possível agregar diversos tipos de variáveis dentro 
 * de uma mesma variável ( Lista ).
 * Pelo que entendi, o MAP está para o DART como o Dicionário está para
 * o Python.
 */


main(){

  List<String> nomes = ['Jacob','Joao','Jose'];
  print('=== Exemplo usando Lista ===');
  print('Nome: ' + nomes[0] + '\n');

  var maps = {
    'nome' : 'Jacob Moura',
    'idade' : 27,
    'cidade' : 'Maringa',
    'estado' : 'Paraná'
  };

  print('=== Exemplo usando Maps ===');
  print('Nome: ' + maps['nome']);
  print('Idade: ' + maps['idade'].toString());
  print('Cidade: ' + maps['cidade']);
  print('Estado: ' + maps['estado']);
  print(maps);
  print('\n');
  
  maps['nome'] = 'João Alves';
  print('Substituido nome por "João Alves"');
  print('Nome: ' + maps['nome']);


}