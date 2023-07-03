void main() {
  final celcius  = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  calcularCelcius (celcius );
}

double claculaFahrenheit(double celcius) {
  return celcius * 1.8 + 32;
}

double calculaKelvin(double celcius) {
  return celcius + 273.15;
}

void calcularCelcius(List<double> celcius) {
  for (final celciu in celcius) {
    final fahrenheit = claculaFahrenheit(celciu);
    final kelvin = calculaKelvin(celciu);

    print(
        "Raio: $celciu, Área: ${fahrenheit.toStringAsFixed(2)}, Perímetro: ${kelvin.toStringAsFixed(2)}");
  }
}
