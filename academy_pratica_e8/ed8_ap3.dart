void main() {
  final macaco = MacacoPrego();
  macaco.correr();
  macaco.gritar();
}

abstract class Animal {
  void correr();
}

abstract class Prego {
  void gritar();
}

class MacacoPrego implements Animal, Prego {
  void correr() {
    print("O macaco prego está correndo.");
  }

  void gritar() {
    print("O macaco prego está gritando.");
  }
}
