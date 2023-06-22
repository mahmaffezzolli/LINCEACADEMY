import 'dart:math';

void main() {
  final random = Random();

  List<int> lista = [];

  for (int i = 0; i < 50; i++) {
    int aleatorio = 1 + random.nextInt(15);
    lista.add(aleatorio);
  }
  print("Lista original: $lista");

  for (int i = 0; i < lista.length; i++) {
    int numero = lista[i];
    lista.removeWhere((numero) => numero % 2 == 0);
  }
  print("Lista atualizada: $lista");
}
