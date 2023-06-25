import 'dart:math';

void main() {
  Random random = Random();

  List<int> listaRaio = [];

  for (int i = 0; i < 10; i++) {
    int aleatorio = 1 + random.nextInt(100);
    listaRaio.add(aleatorio);
  }

  for (int i = 0; i < listaRaio.length; i++) {
    int numero = listaRaio[i];
    double area = calculoarea(numero);
    double perimetro = calculoperimetro(numero);
    print("Raio: $numero, Área: ${area.toStringAsFixed(2)}, Perímetro: ${perimetro.toStringAsFixed(2)}");
  }
}

double calculoarea(int raio) {
  return 3.14 * (raio * raio);
}

double calculoperimetro(int raio) {
  return 2 * 3.14 * raio;
}
