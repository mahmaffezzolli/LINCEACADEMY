import 'dart:collection';
import 'dart:async';

class Carta {
  final Naipe naipe;
  final String simbolo;

  Carta(this.naipe, this.simbolo);

  @override
  String toString() {
    String naipeSimbolo;
    switch (naipe) {
      case Naipe.paus:
        naipeSimbolo = '\u2663';
        break;
      case Naipe.copas:
        naipeSimbolo = '\u2665';
        break;
      case Naipe.espadas:
        naipeSimbolo = '\u2660';
        break;
      case Naipe.ouros:
        naipeSimbolo = '\u2666';
        break;
    }
    return "$simbolo $naipeSimbolo";
  }
}

class Baralho {
  Queue<Carta> cartas = Queue();

  void empilhaCarta(Carta carta) {
    cartas.addLast(carta);
  }

  Future<Carta> removerCarta() async {
    await Future.delayed(Duration(seconds: 1));
    return cartas.removeFirst();
  }

  bool get vazio {
    return cartas.isEmpty;
  }
}

void main() async {
  Baralho baralho = Baralho();

  baralho.empilhaCarta(Carta(Naipe.paus, 'A'));
  baralho.empilhaCarta(Carta(Naipe.copas, 'A'));
  baralho.empilhaCarta(Carta(Naipe.espadas, 'A'));
  baralho.empilhaCarta(Carta(Naipe.ouros, 'A'));

  while (!baralho.vazio) {
    Carta cartaRemovida = await baralho.removerCarta();
    print("Carta removida: $cartaRemovida");
  }
}

enum Naipe { paus, copas, espadas, ouros }
