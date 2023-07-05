import 'package:intl/intl.dart';
void main() {
  final dateFormat = DateFormat('dd/MM/yyyy');
  final dataAtual = DateTime.now();

  var diasUteis = 18;
  var dataCalculada = dataAtual;

  while (diasUteis > 0) {
    dataCalculada = dataCalculada.add(Duration(days: 1));
    final sabado = dataCalculada.weekday == DateTime.friday;
    final domingo = dataCalculada.weekday == DateTime.sunday;

    if (sabado || domingo) {
      continue;
    }

    diasUteis--;
  }

  print('Data atual: ${dateFormat.format(dataAtual)}');
  print('Data calculada: ${dateFormat.format(dataCalculada)}');
}
