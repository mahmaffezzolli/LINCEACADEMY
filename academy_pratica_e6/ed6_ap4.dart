void main() {
  try {
    final nomeArquivo = 'bloco.txt';

    ArquivoTexto arquivoTexto = ArquivoTexto(nomeArquivo);

    arquivoTexto.abrir();
  } catch (e) {
    print('Entrada inválida. Digite um nome válido.');
  } finally {
    print('Fim do programa.');
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  final String nome;

  ArquivoTexto(this.nome);

  @override
  void abrir() {
    try {
      if (nome == 'bloco.txt') {
        print('Arquivo aberto: $nome');
      } else {
        throw Exception('Erro ao abrir o arquivo $nome');
      }
    } catch (e) {
      rethrow;
    }
  }
}
