//IF, Switch.

void main() {

  bool alimentado = true;
  if (alimentado == false) {
    comer(alimentado);
    
  } else { 
    print("usuario ja ta almoçado");
  }

  //mais ou menos assim que funciona o if else, o switch case é parecido:

  int numero = 3;

  switch(numero) {
    case 1:
      print('1');
      break;
    case 2:
    print('2');
    break;
    case 3:
      print('3');
      break;
    default:
      print('sei la q numero é esse');
      break;
  } 
  
  //obviamente não é pra isso que é usado o switch case é só um exemplo idiota mesmo


//Extruturas de repeticao
//

//for

for (int i = 0; i<10; i++) { // (valor da variavel, equanto essa condição retornar true, faça isso no final de cada loop)
  print(i);
}

//for in e for of é igual outras linguagens e eu n vo colocar pq ngm vai ler isso e eu to com preguiça
//mas ai se tu leu isso eu acho q mordi minha lingua

int contador = 10;

while (contador != 0) {
  contador--;
  print(contador);
}

} 


//assim que se declara função caso surja a duvida:
void comer(alimentado) {
  alimentado = !alimentado;
  if (alimentado == true) { return print('Usuario alimentado'); }
  if (alimentado == false) { return print('Usuario desalimentado'); }
}