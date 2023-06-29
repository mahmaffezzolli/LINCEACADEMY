void main() {
  entrada('Maria');
  entrada('1235');
}

void entrada(String valor) {
  try {
    int numero = int.parse(valor);
    print("Numero digitado: $numero");
  } catch (e) {
    print("Entrada invalida. Insira apenas numeros inteiros.");
  }
}