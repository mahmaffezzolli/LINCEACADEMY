class Pessoa {
  const Pessoa(
    this.nome,
    this.sobrenome,
    this.idade,
    this.ativo,
    this.peso,
    this.nacionalidade,
  );
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String nacionalidade;

  @override
  String toString() {
    var imprime = '';
   

    imprime += "Nome completo: $nome $sobrenome\n";
    if (idade < 18) {
      imprime += "Idade:$idade (menor de idade)\n";
    } else {
      imprime += "Idade:$idade (maior de idade)\n";
    }

    if (ativo == true) {
      imprime += "Situação: ativo\n";
    } else {
      imprime += "Situação: inativo\n";
    }

    imprime += "Peso: $peso\n";

    if (nacionalidade != null) {
      imprime += "Nacionalidade: $nacionalidade\n";
    } else {
      imprime += "Nacionalidade: Nao informada\n";
    }

    return imprime;
  
  }
}

void main() {
  const Pessoa pessoa = Pessoa("Maria", "Eduarda", 17, true, 60.4,"Brasileira",);

  print(pessoa.toString());
}
