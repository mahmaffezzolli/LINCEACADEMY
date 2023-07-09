import 'dart:math';
import 'dart:async';

class Figura {
  String nome;
  int codigo;

  Figura(this.nome, this.codigo);
}

class PacoteFiguras {
  List<Figura> figuras;

  PacoteFiguras(this.figuras);
}

class AlbumFigurinhas {
  List<Figura> album = [];
  List<int> repetidas = [];

  void adicionarFiguras(PacoteFiguras pacote) {
    for (var figura in pacote.figuras) {
      if (!album.contains(figura)) {
        album.add(figura);
      } else {
        repetidas.add(figura.codigo);
      }
    }
  }

  bool albumCompleto(List<Figura> listaFiguras) {
    for (var figura in listaFiguras) {
      if (!album.contains(figura)) {
        return false;
      }
    }
    return true;
  }

  Future<void> imprimirAlbum() async {
    album.sort((a, b) => a.codigo.compareTo(b.codigo));
    for (var figura in album) {
      print('${figura.codigo}: ${figura.nome}');
      await Future.delayed(Duration(seconds: 1));
    }
  }
}

void main() async {
  var listaFiguras = [
    Figura('KEVIN', 1),
    Figura('STUART', 2),
    Figura('BOB', 3),
    Figura('JERRY', 4),
    Figura('CARL', 5),
    Figura('MARK', 6),
    Figura('GRU', 7),
    Figura('SCARLET', 8),
    Figura('LUCY', 9),
    Figura('AGNES', 10),
    Figura('EDITH', 11),
    Figura('MARGO', 12),
    Figura('DAVE', 13),
    Figura('MIKE', 14),
    Figura('PHIL', 15),
    Figura('STEVE', 16),
    Figura('TIM', 17),
    Figura('TOM', 18),
    Figura('FRANKE', 19),
    Figura('JOHN', 20),
  ];

  var random = Random();
  var albumMinions = AlbumFigurinhas();
  var pacoteFiguras = PacoteFiguras([]);

  while (!albumMinions.albumCompleto(listaFiguras)) {
    var figurasAleatorias = <Figura>[];
    for (var i = 0; i < 4; i++) {
      var figuraAleatoria = listaFiguras[random.nextInt(listaFiguras.length)];
      figurasAleatorias.add(figuraAleatoria);
    }
    pacoteFiguras.figuras = figurasAleatorias;
    albumMinions.adicionarFiguras(pacoteFiguras);
  }
  print("-------------ALBUM DE FIGURINHAS DOS MINIONS----------------");
  print('Número de figuras repetidas: ${albumMinions.repetidas.length}');
  await albumMinions.imprimirAlbum();
}
