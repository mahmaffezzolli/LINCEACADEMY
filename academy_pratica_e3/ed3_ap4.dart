import 'dart:math';

void main() {
  final random = Random();

  List<int> listaTemp = [];

  for (int i = 0; i < 15; i++) {
    int aleatorio = 1 + random.nextInt(5000);
    listaTemp.add(aleatorio);
  }

  imprimirNumeros(listaTemp);
}

void imprimirNumeros(List<int> numeros) {
  numeros.sort();

  for (final decimal in numeros) {
    print("decimal: $decimal, "
        " binario: ${bin(decimal)},"
        " octal: ${octal(decimal)},"
        " hexadecimal: ${hexa(decimal)}");
  }
}

String bin(int numero) => numero.toRadixString(2);

String octal(int numero) => numero.toRadixString(8);

String hexa(int numero) => numero.toRadixString(8);
