void main() {
  Map<String, int?> pessoas = {
  "Nelson" : null ,
  "Jane" :null ,
  "Jack" :16 ,
  "Rupert" :37 ,
  "Andy": 13,
  "Kim" : 27,
  "Robert" :31 ,
  };
 

for (var entry in pessoas.entries) {
    print("${entry.key} -${entry.value ?? 'Idade não informada'}");
  }
}
