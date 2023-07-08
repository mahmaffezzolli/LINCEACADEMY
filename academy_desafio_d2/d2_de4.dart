import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas 
  final circuloA = Circulo('Círculo A', 3);
  final circuloB = Circulo('Círculo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);
  final trianguloEquilateroA = TrianguloEquilatero('Triângulo Equilátero A', 5);
  final trianguloEquilateroB = TrianguloEquilatero('Triângulo Equilátero B', 7);
  final trianguloRetanguloA = TrianguloRetangulo('Triângulo Retângulo A', 3, 4);
  final trianguloRetanguloB = TrianguloRetangulo('Triângulo Retângulo B', 5, 12);
  final pentagonoRegularA = PentagonoRegular('Pentágono Regular A', 6);
  final pentagonoRegularB = PentagonoRegular('Pentágono Regular B', 8);
  final hexagonoRegularA = HexagonoRegular('Hexágono Regular A', 4);
  final hexagonoRegularB = HexagonoRegular('Hexágono Regular B', 7);

  final formas = [
    circuloA,
    circuloB,
    retanguloA,
    retanguloB,
    trianguloEquilateroA,
    trianguloEquilateroB,
    trianguloRetanguloA,
    trianguloRetanguloB,
    pentagonoRegularA,
    pentagonoRegularB,
    hexagonoRegularA,
    hexagonoRegularB,
  ];

  final maiorArea = comparador.formaDeMaiorArea(formas);
  final maiorPerimetro = comparador.formaDeMaiorPerimetro(formas);

  print(
    'A maior área é ${maiorArea.calcularArea().toStringAsFixed(2)} '
    'e pertence a ${maiorArea.nome}',
  );

  print(
    'O maior perímetro é ${maiorPerimetro.calcularPerimetro().toStringAsFixed(2)} '
    'e pertence a ${maiorPerimetro.nome}',
  );
}

abstract class FormaGeometrica {
  /// recebe o nome da forma
  FormaGeometrica(this.nome);

  final String nome;

  /// Calcula e retorna a área da forma geométrica
  double calcularArea();

  /// Calcula e retorna o perímetro da forma geométrica
  double calcularPerimetro();
}

/// forma geométrica círculo
class Circulo extends FormaGeometrica {
  /// recebe o raio do círculo
  Circulo(String nome, this.raio) : super(nome);

  final double raio;

  @override
  double calcularArea() => math.pi * math.pow(raio, 2);

  @override
  double calcularPerimetro() => 2 * math.pi * raio;
}

///forma geométrica retângulo
class Retangulo extends FormaGeometrica {
  /// recebe a altura e largura do retângulo
  Retangulo(String nome, this.altura, this.largura) : super(nome);

  final double altura;
  final double largura;

  @override
  double calcularArea() => altura * largura;

  @override
  double calcularPerimetro() => (altura * 2) + (largura * 2);
}

///forma geométrica triângulo equilátero
class TrianguloEquilatero extends FormaGeometrica {
  ///recebe o lado do triângulo equilátero
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double calcularArea() => (math.sqrt(3) / 4) * math.pow(lado, 2);

  @override
  double calcularPerimetro() => lado * 3;
}

///geométrica triângulo retângulo
class TrianguloRetangulo extends FormaGeometrica {
  /// recebe a base e altura do triângulo retângulo
  TrianguloRetangulo(String nome, this.base, this.altura) : super(nome);

  final double base;
  final double altura;

  @override
  double calcularArea() => (base * altura) / 2;

  @override
  double calcularPerimetro() {
    final hipotenusa = math.sqrt(math.pow(base, 2) + math.pow(altura, 2));
    return base + altura + hipotenusa;
  }
}

///forma geométrica pentágono regular
class PentagonoRegular extends FormaGeometrica {
  ///recebe o lado do pentágono regular
  PentagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double calcularArea() {
    final apotema = lado / (2 * math.tan(math.pi / 5));
    return (5 * lado * apotema) / 2;
  }

  @override
  double calcularPerimetro() => lado * 5;
}

/// Representa a forma geométrica hexágono regular
class HexagonoRegular extends FormaGeometrica {
  ///recebe o lado do hexágono regular
  HexagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double calcularArea() => (3 * math.sqrt(3) * math.pow(lado, 2)) / 2;

  @override
  double calcularPerimetro() => lado * 6;
}

/// Compara características das formas
class ComparadorFormasGeometricas {
  /// retorna a forma geométrica com a maior área
  FormaGeometrica formaDeMaiorArea(List<FormaGeometrica> formas) {
    FormaGeometrica maiorForma = formas[0];

    for (int i = 1; i < formas.length; i++) {
      if (formas[i].calcularArea() > maiorForma.calcularArea()) {
        maiorForma = formas[i];
      }
    }

    return maiorForma;
  }

  /// Retorna a forma geométrica com o maior perímetro
  FormaGeometrica formaDeMaiorPerimetro(List<FormaGeometrica> formas) {
    FormaGeometrica maiorForma = formas[0];

    for (int i = 1; i < formas.length; i++) {
      if (formas[i].calcularPerimetro() > maiorForma.calcularPerimetro()) {
        maiorForma = formas[i];
      }
    }

    return maiorForma;
  }
}
