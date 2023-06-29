import 'dart:math';

void main() {
  final random = Random();

  try {
    final retangulo = Retangulo(
      random.nextDouble() * 99,
      random.nextDouble() * 99,
    );

    double area = retangulo.calculaArea();
    print("Area do retangulo: ${area.toStringAsFixed(2)}");
  } on Exception catch (e) {
    print(e);
  }
}

abstract class Forma {
  double calculaArea();
}

class Retangulo implements Forma {
  Retangulo(this.base, this.altura) {
    if (base <= 0 || altura <= 0) {
      throw Exception(
        "Dimensoes invalidas, informe apenas valores positivos maiores que zero"
      );
    }
  }

  final double base;
  final double altura;

  @override
  double calculaArea() {
    return base * altura;
  }
}
