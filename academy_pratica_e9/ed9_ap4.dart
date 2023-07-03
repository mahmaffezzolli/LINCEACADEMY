import 'dart:async';

void main() async {
  print("Iniciando busca dos dados");
  await busca();
  print("Buscando dados...");
  await busca();
  print("Dados encontrados com sucesso!");
}

Future<void> busca() async {
  await Future.delayed(Duration(seconds: 1));
}
