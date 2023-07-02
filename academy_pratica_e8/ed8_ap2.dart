void main() {
  final passaro = Passaro();
  passaro.comer();
  passaro.beber();
  passaro.assobiar();
}

abstract class Animal {
  void comer() {
    print("O animal está comendo");
  }

  void beber() {
    print("O animal está bebendo");
  }
}

class Passaro extends Animal {
  void assobiar() {
    print("O passaro está assobiando");
  }
}
