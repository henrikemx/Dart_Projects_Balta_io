import 'dart:io';

main(){

  bool condicao = true;
  var i = 0;
  var segant = 0;
  var segpost = 0;

  while(condicao){
    DateTime time = DateTime.now();
    segpost = time.second;

    if (segpost > segant){
      print('\x1B[2J\x1B[0;0H');
      stdout.writeln('i = $i');
      stdout.write('Hora Atual: ${time.hour < 10 ? '0' + '${time.hour}' : time.hour}:${time.minute < 10 ? '0' + '${time.minute}' : time.minute}:${time.second < 10 ? '0' + '${time.second}' : time.second}:${time.millisecond}');
      if (i > 50000000){
        break;
      }
    }
    segant = time.second;
    i++;
  }
}