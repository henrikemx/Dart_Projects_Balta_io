// aqui iremos trabalhar co o loop'for

main(){
/*
  for (int x = 0; x < 10; x++) {

    print("rodou $x");

  }
*/

  bool condicao = true;
  int x = 0;

  while(condicao){
    print("rodou $x");
    if (x > 9) {
      condicao = false;
    }
    x++;
  }

}