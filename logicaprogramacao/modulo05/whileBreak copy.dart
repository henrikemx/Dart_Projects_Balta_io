import 'dart:io';

main(){

  bool condicao = true;
  var i = 0;
  var segant = 0;
  var segpost = 0;

  while(condicao){
    DateTime date = DateTime.now();
    segpost = date.second;

    if (segpost > segant){
      print('\x1B[2J\x1B[0;0H');
      stdout.write('${date.hour}:${date.minute}:${date.second}');
      if (i == 50000){
        break;
      }
      segant = date.second;
    }
    i++;
  }

}