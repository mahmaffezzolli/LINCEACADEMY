void main() {
  final valorProduto = 80.0;
  final valorDesconto = 60.0;

  final percent = percentualDesconto(valorProduto, valorDesconto);
  print(
      "O produto custava $valorProduto reais, foi vendido por $valorDesconto reais. O desconto foi de:$percent%");
}

int percentualDesconto(double valorProduto, double valorDesconto) {
  final percentual =(valorDesconto * 100) ~/ valorProduto;
  return 100 - percentual;
}
