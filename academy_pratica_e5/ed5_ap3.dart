import 'dart:math';

void main() {
  Random random = Random();
  int numeroAleatorio = random.nextInt(901) + 100;
  int resultado = somaPares(numeroAleatorio);

  print('A soma dos números pares entre 0 e $numeroAleatorio é $resultado');
}

int somaPares(int numero) {
  int soma = 0;
  for (int i = 0; i <= numero; i += 2) {
    soma += i;
  }
  return soma;
}
