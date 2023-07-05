import 'dart:math';

void main() {
  final random = Random();
  List<String> nomes = [
    "Ana",
    "Maria",
    "Francisco",
    "Joao",
    "Pedro",
    "Gabriel",
    "Rafaela",
    "Marcio",
    "Jose",
    "Carlos",
    "Patricia",
    "Helena",
    "Camila",
    "Mateus",
    "Gabriel",
    "Samuel",
    "Karina",
    "Antonio",
    "Daniel",
    "Joel",
    "Cristiana",
    "Sebastiao",
    "Paula"
  ];
  List<String> sobrenomes = [
    "Silva",
    "Souza",
    "Almeida",
    "Azevedo",
    "Braga",
    "Barros",
    "Campos",
    "Cardoso",
    "Costa",
    "Teixeira",
    "Santos",
    "Rodrigues",
    "Ferreira",
    "Alves",
    "Pereira",
    "Lima",
    "Gomes",
    "Ribeiro",
    "Carvalho",
    "Lopes",
    "Barbosa"
  ];
  final nomesAleatorios = nomes[random.nextInt(nomes.length)];
  final sobrenomesAleatorios = sobrenomes[random.nextInt(sobrenomes.length)];
  final nomeCompleto = "$nomesAleatorios $sobrenomesAleatorios";
  print("Nome completo: $nomeCompleto");
}
