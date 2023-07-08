class Musica {
  String titulo;
  String artista;
  String album;
  int duracao; // em segundos

  Musica(this.titulo, this.artista, this.album, this.duracao);
}

class BibliotecaDeMusicas {
  List<Musica> musicas;

  BibliotecaDeMusicas(this.musicas);

  void imprimirMusicas() {
    print('-------------------------- Biblioteca de Músicas --------------------------');
    for (var i = 0; i < musicas.length; i++) {
      var musica = musicas[i];
      print('Música ${i + 1}:');
      print('Título: ${musica.titulo}');
      print('Artista: ${musica.artista}');
      print('Álbum: ${musica.album}');
      print('Duração: ${musica.duracao} segundos');
      print('----------------------------------------------------------------------------');
    }
  }

  int getNumeroDeMusicas() {
    return musicas.length;
  }

  double getTempoTotalEmHoras() {
    var duracaoTotal = 0;
    for (var musica in musicas) {
      duracaoTotal += musica.duracao;
    }
    return duracaoTotal / 3600; // convertendo para horas
  }

  List<Musica> buscarPorTitulo(String titulo) {
    var resultados = <Musica>[];
    for (var musica in musicas) {
      if (musica.titulo.toLowerCase().contains(titulo.toLowerCase())) {
        resultados.add(musica);
      }
    }
    return resultados;
  }

  List<Musica> buscarPorArtista(String artista) {
    var resultados = <Musica>[];
    for (var musica in musicas) {
      if (musica.artista.toLowerCase().contains(artista.toLowerCase())) {
        resultados.add(musica);
      }
    }
    return resultados;
  }

  List<Musica> buscarPorAlbum(String album) {
    var resultados = <Musica>[];
    for (var musica in musicas) {
      if (musica.album.toLowerCase().contains(album.toLowerCase())) {
        resultados.add(musica);
      }
    }
    return resultados;
  }
}

void main() {
  var musicas = [
    Musica('Perfect', 'Ed Sheeran', '÷', 279),
    Musica('Anti-hero', 'Taylor Swift', 'Midnights', 309),
    Musica('Flowers', 'Miley Cyrus', 'Endless Summer Vacation', 201),
    Musica('Daylight', 'David Kushner', '洗脑节奏 Viral Hits', 229),
    Musica('Shape of You', 'Ed Sheeran', '÷', 233),
  ];

  var biblioteca = BibliotecaDeMusicas(musicas);

  biblioteca.imprimirMusicas();

  var numeroDeMusicas = biblioteca.getNumeroDeMusicas();
  print('Número de músicas: $numeroDeMusicas');
  
  var tempoTotalEmHoras = biblioteca.getTempoTotalEmHoras();
  print('Tempo total em horas: $tempoTotalEmHoras');

  var musicasPorTitulo = biblioteca.buscarPorTitulo('Perfect');
  print('--- Músicas encontradas por título ---');
  for (var musica in musicasPorTitulo) {
    print('${musica.titulo} - ${musica.artista} (${musica.album})');
  }

  var musicasPorArtista = biblioteca.buscarPorArtista('Ed Sheeran');
  print('--- Músicas encontradas por artista ---');
  for (var musica in musicasPorArtista) {
    print('${musica.titulo} - ${musica.artista}');
  }

  var musicasPorAlbum = biblioteca.buscarPorAlbum('÷');
  print('--- Músicas encontradas por álbum ---');
  for (var musica in musicasPorAlbum) {
    print('${musica.titulo} - ${musica.artista} (${musica.album})');
  }
}
