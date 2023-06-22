void main() {
  Map<String, List<String>> cidadesestados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda']
  };

  List<String> city = [];
  cidadesestados.values.forEach((cidades) {
    city.addAll(cidades);
  });
  
  city.sort(); // deixa em ordem alfabetica
  
  city.forEach((cidade) {
    cidadesestados.forEach((estado, cidades) {
      if (cidades.contains(cidade)) {
        print("$cidade - $estado");
      }
    });
  });
}
