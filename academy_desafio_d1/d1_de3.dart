void main() {
  final paragrafo =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";
  print(paragrafo);

  final numeroDeFrases = contarFrases(paragrafo);
  final numeroDeVogais = contarVogais(paragrafo);
  final consoantesEncontradas = encontrarConsoantes(paragrafo);
  final consoantesOrdenadas = consoantesEncontradas.toList()..sort();

  print("Número de palavras: ${paragrafo.split(" ").length}");
  print("Tamanho do texto: ${paragrafo.length}");
  print("Número de frases: $numeroDeFrases");
  print("Número de vogais: $numeroDeVogais");
  print("Consoantes encontradas: ${consoantesOrdenadas.join(', ')}");
}

int contarFrases(String paragrafo) {
  int contador = 0;
  final frases = paragrafo.trim().split(".");
  for (final frase in frases) {
    if (frase.trim().isNotEmpty) {
      contador++;
    }
  }
  return contador;
}

const vogais = 'aeiou';

int contarVogais(String paragrafo) {
  int contador = 0;
  for (final char in paragrafo.toLowerCase().runes) {
    final letra = String.fromCharCode(char);
    if (vogais.contains(letra)) {
      contador++;
    }
  }
  return contador;
}

const consoantes = 'bcdfghjklmnpqrstvwxyz';

Set<String> encontrarConsoantes(String paragrafo) {
  final consoantesEncontradas = <String>{};
  for (final char in paragrafo.toLowerCase().runes) {
    final letra = String.fromCharCode(char);
    if (consoantes.contains(letra)) {
      consoantesEncontradas.add(letra);
    }
  }
  return consoantesEncontradas;
}
