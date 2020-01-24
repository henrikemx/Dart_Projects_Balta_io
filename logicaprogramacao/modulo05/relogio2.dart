import 'dart:io';

main(){

  bool condicao = true;
  var i = 0;
  var msant = 0;
  var mspost = 0;

  while(condicao){
    DateTime time = DateTime.now();
    mspost = time.millisecond;

    if (mspost > msant){
      print('\x1B[2J\x1B[0;0H');
      stdout.writeln('i = $i');
      stdout.writeln('Data Atual do Sistema: ${time.day}/${time.month < 10 ? '0' + '${time.month}':time.month}/${time.year}');
      stdout.write('Hora Atual: ${time.hour < 10 ? '0' + '${time.hour}' : time.hour}:${time.minute < 10 ? '0' + '${time.minute}' : time.minute}:${time.second < 10 ? '0' + '${time.second}' : time.second}:${time.millisecond}');
      if (i > 10000000){
        break;
      }
    }
    msant = time.millisecond;
    i++;
  }
}