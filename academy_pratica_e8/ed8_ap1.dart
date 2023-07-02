import 'dart:math';

enum GeneroMusical { rock, pop, jazz, eletronica, hiphop, classico }

void main() {
  final random = Random();
  final opcao = random.nextInt(6);
  final fav = GeneroMusical.values[opcao];

  switch (fav) {
    case GeneroMusical.rock:
      print("Meu gênero musical preferido é o rock");
      break;
    case GeneroMusical.pop:
      print("Meu gênero musical preferido é o pop");
      break;
    case GeneroMusical.jazz:
      print("Meu gênero musical preferido é o jazz");
      break;
    case GeneroMusical.hiphop:
      print("Meu gênero musical preferido é o hip_hop");
      break;
    case GeneroMusical.eletronica:
      print("Meu gênero musical preferido é o eletronico");
      break;
    case GeneroMusical.classico:
      print("Meu gênero musical preferido é o classico");
      break;
  }
}
