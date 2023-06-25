import 'dart:math';

void main() {
  int resultadoA = funcA(funcB);
  int resultadoB = funcA(funcC);

  print("Resultado da Funcao A(B): $resultadoA");
  print("Resultado da Funcao A(C): $resultadoB");
}

Random random = Random();

int funcA(int Function(int) funcaoParametro) {
  final random = Random();
  final resultadoA = funcaoParametro(random.nextInt(100));
  final resultadoB = funcaoParametro(random.nextInt(100));
  final soma = resultadoA + resultadoB;

  return soma;
}

int funcB(int numero) {
  return  numero + 2;
}

int funcC(int numero) {
  return numero ~/ 2;
}
