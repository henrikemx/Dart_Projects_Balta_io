/**
 * Tema: Tipando os MAPS...
 * 
 */


main(){

  Map<String, dynamic> maps = {
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