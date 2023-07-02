void main() {
  final conta = ContaBancaria(500.0, "Maria");
  conta.depositar(100.0);
  conta.sacar(50.0);

  print("Saldo atual: ${conta.saldo}");
}

class ContaBancaria {
  ContaBancaria(this.saldo, this.titular);
  late double saldo;
  late String titular;

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
    } else {
      print("Saldo inssuficiente");
    }
  }
}
