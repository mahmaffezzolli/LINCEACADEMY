import 'dart:async';

void main() {
  print("Iniciando lançamento");

  cont().then((_) {
    print("Foguete lançado!");
  });
}

Future<void> cont() async {
  for (var i = 10; i >= 1; i--) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
}