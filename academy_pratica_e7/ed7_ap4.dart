import 'dart:math';

void main() {
  final random = Random();

  final pessoa1 = Pessoa();
  pessoa1.nome = "Maria";
  pessoa1.idade = 1 + random.nextInt(99);
  pessoa1.altura = 1.0 + random.nextDouble() * 1.3;

  print("Nome: ${pessoa1.nome}");
  print("Altura: ${pessoa1.altura.toStringAsFixed(2)}");
  print("Idade: ${pessoa1.idade}");
}

class Pessoa {
  String _nome = "";
  int _idade = 0;
  double _altura = 0.0;

  int get idade => _idade;

  set idade(int valor) {
    if (valor >= 0) {
      _idade = valor;
    } else {
      print("A idade deve ser maior ou igual a zero.");
    }
  }

  String get nome => _nome;

  set nome(String valor) {
    _nome = valor;
  }

  double get altura => _altura;

  set altura(double valor) {
    _altura = valor;
  }
}
