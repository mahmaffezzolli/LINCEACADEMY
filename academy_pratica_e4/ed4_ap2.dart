void main() {
  List<String> listaOriginal = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];

  converterListaParaNumeros(listaOriginal);
}

void converterListaParaNumeros(List<String> lista) {
  List<int> listaConvertida =
      lista.map((elemento) => int.tryParse(elemento) ?? 0).toList();
  print('Lista convertida: ${listaConvertida.join(", ")}');
}
