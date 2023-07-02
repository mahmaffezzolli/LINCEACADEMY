void main() {
  final frutas = <Produto> [];
  final nomes = ["Maça","Pera","Uva","Abacaxi","Banana"];
  final preco = [1.0 , 2.0 , 3.0, 4.0, 5.0];
  
  for (int i=0; i<5;i++){
    final fruta = Produto();
    fruta.nome = nomes[i];
    fruta.preco = preco[i];
    
    frutas.add(fruta);
    final preconovo = fruta.desconto(2.0);
    print("Novo preco do produto ${frutas[i].nome} (com desconto): $preconovo",);
  }

}

class Produto {
  String nome = "";
  double preco = 0.0;

  double desconto(double percentual) {
    return preco - (preco * (percentual / 100));
  }
}
