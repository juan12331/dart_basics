// aqui é uma parte mais importante onde vê future async e await

void main ()  async{
  //Função precisa ser assincrona para usar o await

  Future<String> cepFuture = getCepByName('Rua jk');
  // essa é uma variavel que recebe o valor da função getCepByName

  late String cep;
  // Usamos late para variaveis que serão inicializadas depois

    cep = await cepFuture;
    //para printar o resultado verdadeiro da função retorne usamos uma função then (como se fosse um fetch)
    //Ou podemos fazer isso

    print(cep);
     //isso vai retornar apenas Instance of 'Future<String>'

}

Future<String> getCepByName(String nome) {
  //Simula uma requisição na internet
  return Future.value('0003002001');
}

//pode parecer meio confuso mas sla eu aprendo dps tanto faz
