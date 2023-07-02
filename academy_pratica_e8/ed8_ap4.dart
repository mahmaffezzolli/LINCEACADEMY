import 'dart:math';

void main() {
  final random = Random();
  final numero = random.nextInt(100);

  final result = Calculadora.dobro(numero);
  print("O dobro do numero $numero é: $result");
}

abstract class Calculadora {
  static int dobro(int numero) {
    return numero * 2;
  }
}
