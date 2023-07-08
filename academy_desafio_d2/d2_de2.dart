import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedores = [
    FornecedorDeBebidas(),
    FornecedorDeSanduiches(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDePetiscos(),
    FornecedorUltraCaloricos(),
  ];

  final random = Random();

  //nível inicial de calorias aleatoriamente
  final nivelInicial = random.nextInt(4000);
  pessoa.definirNivelCalorias(nivelInicial);

  int numRefeicoes = 0;
  while (!pessoa.estaSatisfeita()) {
    final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedor);
    numRefeicoes++;
  }

  pessoa.informacoes(numRefeicoes);
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

abstract class Fornecedor {
  Produto fornecer();
}

class FornecedorDeBebidas implements Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  // Retorna um produto que pode ser consumido por um consumidor

  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

//Fornecedor de sansuiches
class FornecedorDeSanduiches implements Fornecedor {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduiche de frango', 350),
    Produto('Sanduiche de carne', 450),
    Produto('Sanduiche vegetariano', 250),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor

  Produto fornecer() {
    return _sanduichesDisponiveis[
        _random.nextInt(_sanduichesDisponiveis.length)];
  }
}

//Fornecedor de bolos

class FornecedorDeBolos implements Fornecedor {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de chocolate', 400),
    Produto('Bolo de cenoura', 300),
    Produto('Bolo de fubá', 250),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

//Fornecedor de saladas

class FornecedorDeSaladas implements Fornecedor {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada de alface', 50),
    Produto('Salada de tomate', 70),
    Produto('Salada de cenoura', 60),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

//Fornecedor de petiscos

class FornecedorDePetiscos implements Fornecedor {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Batata frita', 300),
    Produto('Azeitonas', 100),
    Produto('Amendoins', 200),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

//Fornecedor de ultra caloricos

class FornecedorUltraCaloricos implements Fornecedor {
  final _random = Random();
  final _ultraCaloricosDisponiveis = <Produto>[
    Produto('Pizza', 800),
    Produto('Hamburguer', 600),
    Produto('Coxinha', 500),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _ultraCaloricosDisponiveis[
        _random.nextInt(_ultraCaloricosDisponiveis.length)];
  }
}

//representa as calorias
enum StatusCalorias {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}

class Pessoa {
  int caloriasConsumidas = 0;
  int nivelCalorias = 0;

  void definirNivelCalorias(int nivel) {
    nivelCalorias = nivel;
    print("---------------------CONSUMO------------------");
  }

  bool estaSatisfeita() {
    if (caloriasConsumidas <= 500) {
      return false; // pessoa não comeu o suficiente
    } else if (caloriasConsumidas <= 1800) {
      return false; // pessoa não comeu o suficiente
    } else if (caloriasConsumidas <= 2500) {
      return true; // pessoa comeu o suficiente
    } else {
      return true; // pessoa comeu o suficiente
    }
  }

  //obtem o status atual de calorias como um valor do enum, converte o valor do enum em uma string,remover a parte "StatusCalorias." da string
  void informacoes(int numRefeicoes) {
    print("---------------------INFORMAÇÕES------------------");
    final status =
        getStatusCalorias().toString().replaceAll('StatusCalorias.', '');

    //imprime as saídas
    print('Calorias consumidas: $caloriasConsumidas');
    print('Status: $status');
    print('Número de refeições realizadas: $numRefeicoes');

  }

  //seleciona um produto do fornecedor, imprime o nome do produto e o número de calorias, e o número de calorias do produto é adicionado ao total de calorias consumidas
  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print(' ${produto.nome} (${produto.calorias} calorias)');
    caloriasConsumidas += produto.calorias;
  }

  //status das calorias
  StatusCalorias getStatusCalorias() {
    if (caloriasConsumidas <= 500) {
      return StatusCalorias.deficitExtremo;
    } else if (caloriasConsumidas <= 1800) {
      return StatusCalorias.deficit;
    } else if (caloriasConsumidas <= 2500) {
      return StatusCalorias.satisfeito;
    } else {
      return StatusCalorias.excesso;
    }
  }
  
}
