import 'dart:io';

// Cadastro - para ser executado no terminal

Map<String, dynamic> cadastro = {};
main() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");

  while (condicao) {
    print("Digite um comando");
    String comando = stdin.readLineSync()!;
    if (comando == "sair") {
      print("==== Programa Encerrado ====");
      condicao = false;
    } else if (comando == "cadastro") {
      print("\x1B[2J\x1B[0;0H");
      //esse código é para deixar o terminal limpo!!
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastro);
    } else {
      print("==== ESSE COMANDO NÃO EXISTE ====");
    }
  }
}

cadastrar() {
  print("==== Digite seu Nome");
  cadastro["nome"] = stdin.readLineSync()!;

  print("==== Digite sua idade");
  cadastro["idade"] = stdin.readLineSync()!;

  print("==== Digite sua cidade");
  cadastro["cidade"] = stdin.readLineSync()!;

  print("==== Digite seu estado");
  cadastro["estado"] = stdin.readLineSync()!;
}
