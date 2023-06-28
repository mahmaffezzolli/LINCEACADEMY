//Crie uma funcao que retorne uma lista contendo apenas os numeros impares comecando do zero ate um valor fornecido.
//Imprima a lista de numeros conforme exemplo

void main() {
  List<int> lista = [];
  
  print(lista);
  
  retorna(lista);
}

void retorna(List<int> lista) {
  for (var i = 0; i < 50; i++) {
    if (i.isOdd) {
      lista.add(i);
    }
  }
  for (var item in lista) {
    print("Impar: $item");
  }
  
}