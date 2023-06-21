import 'dart:math';

void main() {
  final random = Random();

  int num1 = 1 + random.nextInt(100);
  int num2 = 1 + random.nextInt(100);

  print("Valores aleatórios: $num1, $num2");

  int troca = num1;
  num1 = num2;
  num2 = troca;

  print("Valores invertidos: $num1, $num2");
}
