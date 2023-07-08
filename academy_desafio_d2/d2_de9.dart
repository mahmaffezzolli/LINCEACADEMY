void main() {
  final controlaPessoas = ControlaPessoas();

  // Cadastrando pessoas no sistema
  controlaPessoas
    ..cadastrarPessoa(Pessoa('Jose', Mes.abril))
    ..cadastrarPessoa(Pessoa('Arthur', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Joao', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jesse', Mes.dezembro))
    ..cadastrarPessoa(Pessoa('Roberta', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Carla', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Thania', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Rafaela', Mes.marco))
    ..cadastrarPessoa(Pessoa('Yuri', Mes.junho))
    ..cadastrarPessoa(Pessoa('Jonas', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Elias', Mes.outubro))
    ..cadastrarPessoa(Pessoa('Abel', Mes.maio))
    ..cadastrarPessoa(Pessoa('Danilo', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jonathan', Mes.abril))
    ..cadastrarPessoa(Pessoa('Joseph', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Abdul', Mes.janeiro))
    ..cadastrarPessoa(Pessoa('Jean', Mes.abril));

  // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
  for (final mes in controlaPessoas.mesesComPessoas) {
    print("\n${mes.name.toUpperCase()}");

    for (final pessoa in controlaPessoas.pessoasPorMes(mes)) {
      print(" >  ${pessoa.nome}");
    }
  }
}

enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

class Pessoa {
  Pessoa(this.nome, this.mesNascimento);

  final String nome;
  final Mes mesNascimento;
}

class ControlaPessoas {
  final _pessoas = <Pessoa>[];
  final _mesesComPessoas = <Mes>{};

  void cadastrarPessoa(Pessoa pessoa) {
    _pessoas.add(pessoa);
    _mesesComPessoas.add(pessoa.mesNascimento);
  }

  List<Mes> get mesesComPessoas =>
      _mesesComPessoas.toList()..sort((a, b) => a.index.compareTo(b.index));

  List<Pessoa> pessoasPorMes(Mes mes) {
    return _pessoas.where((pessoa) => pessoa.mesNascimento == mes).toList();
  }
}
