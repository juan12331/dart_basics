//O dart n tem interfaces :( ele tem classes abstratas
//mas é basicamente mesma coisa :P
//interface é basicamente um "contrato" que fazemos entre as classes
//por exemplo

abstract class humano {
  String comunicar();
}
// toda classe que "implementar" a classe humano tem que ter a função comunicar

class pessoa implements humano {
  String comunicar() {
    return "abala bla bla";
  }
}

//para fazer herança é facil (eu não vou explicar pq eu ja sei e tanto faz)

class cachorro {
  bool fofo = true;
  ataque() {
    print('o doguinho atacou');
  }
}

class cachorroPolicia extends cachorro {
  farejarCrime() {
    print('o doguinho farejou o crime');
  }
}

cachorroPolicia cachorrinhoBrabo = cachorroPolicia();

// cachorrinhoBrabo.fofo 
// retorna true

//Polimorfismo é mais facil ainda

abstract class Pagamento {
  void pagar ();
}

class pagarBoleto implements Pagamento {
  void pagar () {
    print('pagando com boleto');
  }
}

class pagarPix implements Pagamento {
  void pagar () {
    print('pagando com pix');
  }
}

void main() {
  Pagamento pagamento = pagarBoleto();
  pagamento.pagar();

  pagamento = pagarPix();
  pagamento.pagar();
}