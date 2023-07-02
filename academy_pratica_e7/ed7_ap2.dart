void main() {
  final resultado = Retangulo(50 , 10);
  double area = resultado.calcularArea(); 

  print("Area do retangulo: $area");
}

class Retangulo  {
  Retangulo (this.largura, this.altura);
  late double largura ;
  late double altura;

  double calcularArea () {
   return largura * altura;
  }
}
