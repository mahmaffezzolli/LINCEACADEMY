import 'dart:collection';
import 'dart:math';
import 'dart:async';

void main() async {
  FilaDoMercado fila = FilaDoMercado();

  for (int i = 0; i < 10; i++) {
    Pessoa pessoa = Pessoa(GeradorNomesAleatorios.gerarNomeAleatorio());
    await fila.adicionarPessoa(pessoa);
  }

  while (!fila.vazia) {
    Pessoa pessoaAtendida = await fila.proximo();
    print("${pessoaAtendida.nome} foi atendido(a)");
  }
}

class Pessoa {
  final String nome;

  Pessoa(this.nome);
}

class FilaDoMercado {
  Queue<Pessoa> fila = Queue();

  Future<void> adicionarPessoa(Pessoa pessoa) async {
    await Future.delayed(Duration(seconds: 2));
    fila.add(pessoa);
    print("${pessoa.nome} entrou na fila");
  }

  Future<Pessoa> proximo() async {
    await Future.delayed(Duration(seconds: 1));
    return fila.removeFirst();
  }

  bool get vazia {
    return fila.isEmpty;
  }
}

class GeradorNomesAleatorios {
  static final Set<String> nomes = {
    "Ana",
    "Maria",
    "Francisco",
    "Joao",
    "Pedro",
    "Gabriel",
    "Rafaela",
    "Marcio",
    "Jose",
    "Carlos",
    "Patricia",
    "Helena",
    "Camila",
    "Mateus",
    "Samuel",
    "Karina",
    "Antonio",
    "Daniel",
    "Joel",
    "Cristiana",
    "Sebastiao",
    "Paula"
  };
  static final Set<String> sobrenomes = {
    "Silva",
    "Souza",
    "Almeida",
    "Azevedo",
    "Braga",
    "Barros",
    "Campos",
    "Cardoso",
    "Costa",
    "Teixeira",
    "Santos",
    "Rodrigues",
    "Ferreira",
    "Alves",
    "Pereira",
    "Lima",
    "Gomes",
    "Ribeiro",
    "Carvalho",
    "Lopes",
    "Barbosa"
  };

  static String gerarNomeAleatorio() {
    Random random = Random();
    String nome = nomes.elementAt(random.nextInt(nomes.length));
    String sobrenome = sobrenomes.elementAt(random.nextInt(sobrenomes.length));
    return "$nome $sobrenome";
  }
}
