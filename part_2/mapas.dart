void main () {

  List lista = ['texto', 91, true, null];
  List<String> listaNomes = ['nome 1', 'nome 2', 'nome 3'];

  print(lista);
  print(listaNomes);

  // para declarar um mapa usamos "Map"
  // Sintaxe: Map<chave, valor> "nome" = {}
  Map<String, String> mapa = {"chave": "valor"};

  print(mapa); // retorna {"chave": "valor"}
  print(mapa["chave"]); // retorna "valor"

  // para adicionar valores a um mapa temos duas maneiras

  // sintaxe: nomeMapa.putIfAbsent(chave, função que adiciona valor)
  mapa.putIfAbsent('chave2', () => 'valor2');

  print(mapa);  // retorna {"chave": "valor", "chave2": "valor2"} 

  // ou podemos adicionar da seguinte maneira
  // essa forma também pode ser usada para atualizar chave valor

  mapa['chave3'] = 'valor3';

  // para removermos valores fazemos o seguinte

  //sintaxe: nomeMapa.remove(chave)
  mapa.remove('chave3');

  //outra forma de atualizar chave valor é usando .update mas eu nem vo escrever pq to com preguiça

  // mas agora provavelmente a parte mais importante do mapa é o forEach se liga =>

  mapa.forEach((chave, valor) => print(chave)); // retorna: chave, chave2
  mapa.forEach((chave, valor) => print(valor)); // retorna: valor, valor2

  mapa.keys.forEach(print); // printa todas as chaves

  mapa.values.forEach(print); // printa todos os valores

}
