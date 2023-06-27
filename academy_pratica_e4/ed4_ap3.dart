void main() {
  final original = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  print("Lista original: $original");

  final listacorreta = remove(
    lista: original,
    elemento: '6',
  );

  for (var numero in listacorreta) {
    print("Numero: $numero");
  }
}

List<String> remove({
  List<String>? lista,
  String? elemento,
}) {
  lista?.remove(elemento);
  return lista ?? [];
}
