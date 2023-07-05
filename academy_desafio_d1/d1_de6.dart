void main() {

  List<int> listaNum = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  imprimirNumeros(listaNum);
}

void imprimirNumeros(List<int> numeros) {
  numeros.sort();

  for (final decimal in numeros ..sort()) {
    print("decimal: $decimal, "
        " binario: ${bin(decimal)},"
        " octal: ${octal(decimal)},"
        " hexadecimal: ${hexa(decimal)}");
  }
}

String bin(int numero) => numero.toRadixString(2);

String octal(int numero) => numero.toRadixString(8);

String hexa(int numero) => numero.toRadixString(16);