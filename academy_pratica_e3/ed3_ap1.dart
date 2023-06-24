import 'dart:math';

void main() {
  final random = Random();

  List<int> lista = [];
  List<int> lista2 = [];
  List<int> result = [];

  for (int i = 0; i < 5; i++) {
    int aleatorio = 1 + random.nextInt(100);
    lista.add(aleatorio);
  }
  print("Lista: $lista");

  for (int i = 0; i < 5; i++) {
    int aleatorio = 1 + random.nextInt(100);
    lista2.add(aleatorio);
  }
  print("Lista: $lista2");

  calculo(result, lista: lista, lista2: lista2);

  if (result.isEmpty) {
    print("Lista vazia");
  } else {
    print("Lista: $result");
  }
}

void calculo(List<int> result,
    {required List<int> lista, required List<int> lista2}) {
  if (lista.length != lista2.length) {
    result.clear();
    return;
  }

  for (int i = 0; i < lista.length; i++) {
    int numero = lista[i];
    int numero2 = lista2[i];
    result.add(numero + numero2);
    print("$numero + $numero2");
  }
}
