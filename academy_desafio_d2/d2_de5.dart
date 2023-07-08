import 'dart:math';

void main() {
  final listaCompras = ListaCompras();

  //  itens desejados
  listaCompras.adicionarItem('Maça', 2);
  listaCompras.adicionarItem('Banana', 3);
  listaCompras.adicionarItem('Arroz', 4);
  listaCompras.adicionarItem('Feijão', 2);
  listaCompras.adicionarItem('Macarrão', 3);
  listaCompras.adicionarItem('Açúcar', 4);

  listaCompras.exibirItensDesejados();

  //  itens como comprados
  listaCompras.marcarItemComprado('Arroz');
  listaCompras.marcarItemComprado('Macarrão');
  listaCompras.marcarItemComprado('Maça');
  listaCompras.marcarItemComprado('Banana');
  listaCompras.marcarItemComprado('Açúcar');


  //  item sem estoque
  listaCompras.marcarItemSemEstoque('Feijão');

  // item pendente aleatoriamente
  final itemPendente = listaCompras.escolherItemPendente();
  print('Item pendente: $itemPendente');

  //  indicador de progresso
  listaCompras.mostrarProgresso();
}

class ListaCompras {
  final List<ItemCompra> itens = [];

  void adicionarItem(String nome, int quantidade) {
    final item = ItemCompra(nome, quantidade);
    itens.add(item);
  }

  void marcarItemComprado(String nome) {
    final item = _buscarItem(nome);
    if (item != null) {
      item.comprado = true;
    }
  }

  void marcarItemSemEstoque(String nome) {
    final item = _buscarItem(nome);
    if (item != null) {
      item.semEstoque = true;
    }
  }

  void exibirItensDesejados() {
    print("-----------------Itens desejados:--------------");
    for (final item in itens) {
      if (!item.comprado) {
        print('${item.nome} - ${item.quantidade}');
      }
    }
  }

  String escolherItemPendente() {
    print("-----------------Item pendente:-----------------");
    final itensPendentes = itens.where((item) => !item.comprado).toList();
    if (itensPendentes.isNotEmpty) {
      final randomIndex = Random().nextInt(itensPendentes.length);
      return itensPendentes[randomIndex].nome;
    }
    return 'Nenhum item pendente encontrado';
  }

  void mostrarProgresso() {
    print("-----------------Progresso:-----------------");
    final totalItens = itens.length;
    final totalComprados = itens.where((item) => item.comprado).length;
    print('Progresso: $totalComprados/$totalItens');
  }

  ItemCompra? _buscarItem(String nome) {
    for (final item in itens) {
      if (item.nome == nome) {
        return item;
      }
    }
    return null;
  }
}

class ItemCompra {
  final String nome;
  final int quantidade;
  bool comprado;
  bool semEstoque;

  ItemCompra(this.nome, this.quantidade)
      : comprado = false,
        semEstoque = false;
}
