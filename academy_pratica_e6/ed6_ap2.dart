void main() {
  try {
    programa(3);
    print("Entrada correta, voce inseriu um numero par");
  } on Exception catch (e) {
    print(e);
  }
}
void programa(int numero) {
  if (numero.isOdd) {
    throw Exception("Entrada invalida. Insira apenas numeros pares");
  }
}
