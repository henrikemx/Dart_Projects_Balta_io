import 'dart:io';

main(){

  bool condicao = true;
  var i = 0;
  var c1 = 0, c2 = 0, res = 0, cnt = 0;
  var segant = 0;
  var segpost = 0;

  while(condicao){
    DateTime time = DateTime.now();
    segpost = time.second;

    if (segpost > segant){
      print('\x1B[2J\x1B[0;0H');
      stdout.writeln('Ocorreram $i loops em 1 seg.');

      cnt++;
      if(i != 0){
        c1 = c2;
        c2 = i;
        res = c2 - c1;
      }

      if (cnt == 3){
        print('Qtde de loop no primeiro intervalo:  $c1');
        print('Qtde de loop no segundo intervalo:   $c2');
        print('Total de loop no intervalo de 1 seg: $res');
        break;
      }

    }
  segant = time.second;
  i++;
  }
}