import 'dart:io';

// este código roda no Prompt de comando(windows)
main() {
  List<String> produtos = [];
  bool condicao = true;

  imprimir() {
    for (var i = 0; i < produtos.length; i++) {
      print("ITEM $i - ${produtos[i]}");
    }
  }

  ;
  remover() {
    print("=== QUAL ITEM DESEJA REMOVER? ===");
    imprimir();
    int item = int.parse((stdin.readLineSync()!));
    produtos.removeAt(item);
    //para remover um produto com a posição dele
    print("=== ITEM REMOVIDO! ===");
  }

  ;

  while (condicao) {
    print("==== ADICIONE UM PRODUTO ====");
    String text = (stdin.readLineSync()!);

    if (text == "sair") {
      print("=== SAIU DO PROGRAMA ===");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
      //esse código é para deixar o terminal limpo!!
    }
  }
}
