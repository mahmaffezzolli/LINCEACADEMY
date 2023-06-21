import 'dart:math';

void main() {
  final random = Random();

  final num1 = 1 + random.nextInt(100);
  final num2 = 1 + random.nextInt(100);
  final resultado;
  
  print("Valores aleatórios: $num1, $num2");

  resultado = num1 / num2;  
  
  print("Resultado: $resultado");
  
  int inteiro = resultado.floor();
  print("Parte inteira do resultado: $inteiro");
  
  double decimal = (resultado.floor() - resultado).abs();
  print("Parte decimal do resultado: $decimal");
  

}
