import 'dart:math';

void main() {
  final random = Random();

  List<int> lista = [];

  for (int i = 0; i < 50; i++) {
    int aleatorio = 10 + random.nextInt(12);
    lista.add(aleatorio);
  }
  print("Lista original: $lista");

  List<int> numunicos = lista.toSet().toList();

  print("Lista atualizada: $numunicos");
}
