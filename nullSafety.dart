void main() {
  //null safety como o próprio nome diz é uma "feature" de dart que previne dar null para algumas variaveis
  //as vezes falar q uma variavel tem valor nulo é perigoso e desnecessário 

  // String nome; 
  // é errado

  //para forçar o uso de valores nulos é só colocar um "?" antes do nome da variavel EX:

  String? nome;
  print(nome); // retorna null

  nome = 'jeferson';
  print(nome); // retorna jeferson

  nome = null; // posso colocar null dnv

  // isso pode gerar erros, mas se necessário pode ser usado

  // para fazer uma verificação se a variavel é nula coloque um "!" na frente do nome da variavel
 
  // print(nome!);
  // retorna um erro
  nome = "nome";
  print(nome!); //retorna "nome" mas se fosse nulo retornaria um erro e quebraria o código

  late String sobrenome;
  sobrenome = "carlos";
  print(sobrenome);

  // sobrenome = null;
  // isso retorna um erro pois quando usamos o late o dart não permite que o valor retorne a ser nulo após receber um valor
}