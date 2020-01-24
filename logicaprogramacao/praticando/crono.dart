
import 'dart:async';

main() {

  for (var i = 0; i < 10; i++){
    Timer(Duration(seconds: 1), exibir());
  }
}

exibir(){
  DateTime time = DateTime.now();
  print('${time.hour}:${time.minute}:${time.second}');
}