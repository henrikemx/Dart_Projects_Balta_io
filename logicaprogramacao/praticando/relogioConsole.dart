
import 'dart:async';

main() {

  print('Pressione CTRL+C para interromper o programa...');
  checarHora(); // chama a função

}

checarHora(){

  /** 
   * Temporizador que aguarda cerca de 1 milisegundo antes de enviar o 
   * comando. Aqui foi empregado o método periodic da classe Timer para 
   * gerar o tempo de espera para execução da função exibirHora()
   */ 
  Timer.periodic(Duration(seconds: 1), (timer) => 
    exibirHora());
  
}

exibirHora(){

  // cria o objeto time
  DateTime time = DateTime.now();

  // move o cursor para a linha 0, coluna 0 e limpa a tela
  print('\x1b[0;0H\x1b[2J');
  
  // aqui é exibida a hora corrente na tela do console, de maneira dinâmica
  print('${time.hour < 10 ? '0' + '${time.hour}' : time.hour}:${time.minute < 10 ? '0' + '${time.minute}' : time.minute}:${time.second < 10 ? '0' + '${time.second}' : time.second}');
  
}