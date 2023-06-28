//Crie uma funcao que receba como parametro um numero inteiro e retorne a letra do alfabeto correspondente ao numero recebido
//Gere 5 numeros aleatorios, e imprima a letra equivalente a esses numeros:
import 'dart:math';

void main(){
  final random = Random();

for (var i = 0; i < 5; i++) {
  final numeroaleatorio = 1+ random.nextInt(25); 
  final alfabeto = letra(numeroaleatorio);

    print("Numero $numeroaleatorio = Letra $alfabeto");
}
}

String letra(int numero) {
  int valorASCIIA = 'A'.codeUnitAt(0);
  int cdASCII = valorASCIIA + numero - 1;
  return String.fromCharCode(cdASCII);
}
