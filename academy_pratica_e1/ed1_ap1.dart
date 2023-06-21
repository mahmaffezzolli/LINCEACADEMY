void main() {
    String nome = "Maria";
    String sobrenome = "Eduarda";
    int idade = 17;
    bool ativo = true;
    double peso = 60.4;
    String nacionalidade = "Brasileira";
  
  
  print ("Nome completo: $nome $sobrenome");
  
  if (idade<18){
    print("Idade: $idade (menor de idade)");
  }
  else{
     print("Idade: $idade (maior de idade)");
  }
  
  
  print ("Situação: ${ativo ? "Ativo" : "Inativo"}");

  
  print ("Peso: $peso");
  
  if(nacionalidade != null){
    print("Nacionalidade: $nacionalidade");
  }
  else{
     print("Nacionalidade: Não informada");
  }
}