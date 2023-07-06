void main() {
  List<int> listaNum = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  numerosFor(listaNum);
  var somaTotal = numerosFor(listaNum);
  print("For: $somaTotal");
  var somaTotal2 = numeroWhile(listaNum);
  print("While: $somaTotal2");
  var somaTotal3 = numerosRecursivo(listaNum);
  print("Recursão: $somaTotal3");
  var somaTotal4 = numerosLista(listaNum);
  print("Lista: $somaTotal4");
}

int numerosFor(List<int> numeros) {
  var soma = 0;
  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  return soma;
}

int numeroWhile(List<int> numeros) {
  var soma = 0;
  var indice = 0;

  while (indice < numeros.length) {
    soma += numeros[indice];
    indice++;
  }
  return soma;
}

int numerosRecursivo(List<int> numeros) {
  if (numeros.isEmpty) {
    return 0;
  } else {
    return numeros.first + numerosRecursivo(numeros.sublist(1));
  }
}

int numerosLista(List<int> numeros) => numeros.reduce((a, b) => a + b);
