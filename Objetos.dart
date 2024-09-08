//objetos em dart podem ser criados a partir de classes desse jeito

class Pessoa {
  final String nome;
  final int idade;
  double _peso;
  bool vivo;
  //isso são classes, classes são variaveis
  //para deixar qualquer classe privada colocamos "_" antes do seu nome
  //isso serve para o encapsulamento, que na pratica impede q outros arquivos .dart acessem essa variavel _peso
//usamos final pois o nosso objeto vai começar vazio e vai ser criado posteriormente usando o constructor

//tambem podemos fazer variaveis to tipo getter e setter
//são variaveis que podem ser consultadas mas não podem ser alteradas

  String _raca = "humano"; // em outros arquivos é impossível ler essa informacao para isso fazemos um getter

  String get raca => _raca;

  void setPeso(double peso) => _peso = peso;

  void morrer() {
    if (this.vivo == true) {
      vivo = !vivo;
      return print('${this.nome} morreu');
    } else {
      return print ('ja ta morrido');
    }
  }
  //isso são metodos, metodos são funções
  


  
  


  Pessoa(this.nome, this.idade, this._peso, this.vivo); 
  //esse é o costructor q vai dar valores as nossas variaveis vazias (que iremos passar depois)
}

//agora iremos criar a pessoa

Pessoa david = Pessoa("david", 23, 79.5, true);
//assim criamos uma pessoa "david"
Pessoa jefeson = Pessoa("jefeson", 44, 75.3, true);
//criamos outra pessoa com base na mesma classe
Pessoa jefeson2 = Pessoa("jefeson", 44, 75.3, true);
//uma classe pode ter os mesmo valores que a outra mas não podem ter o mesmo nome
Pessoa cadaver = Pessoa("undefined", 154, 5, false);

void main () {
  print('jeferson(2) esta vivo?: ${jefeson2.vivo}');
  jefeson2.morrer();
  print('jeferson(2) esta vivo?: ${jefeson2.vivo}');
  //claro que eu só posso fazer isso pois os metodos e atributos são publicos

  print(jefeson2._peso);
  print(jefeson2.raca); // assim podemos fazer um get da raça mesmo ela estando privada
  //assim podemos fazer um get sem correr o risco de alterarmos algo que não deveria

  //para alterarmos o peso usando setter usamos
  jefeson2.setPeso(75.0);
  print(jefeson2._peso); // alteramos o peso do jefeson2
}

