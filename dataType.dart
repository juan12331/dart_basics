void main() {

String hello = "hello";
int idade = 0;
double dinheiro = 12.5;
//double serve como um float (numeros com virgula)
//BigInt existem também
bool verdade = false;
Null vazio = null;
List agua = ["agua", 0, false];
//também é possível tipar as strings

List<String> terra = ["terra", "false"];
print('${verdade} - ${agua[0]}' );

//nesse caso especifico todos elementos da lista tem que ser string
//no dart é tipado, mas é possivel criar variaveis sem tipagem, tipo typescript
const helloNaoTipado = "hello";
final Final = false;

//o const e o final são praticamente iguais os dois impedem que o valor da variavel muda
// (diferentede de javascript onde só o tipo da variavel é imutavel)
idade = 7;
hello = "novo string";
// helloNaoTipado = "hello 2"; é impossível

// bool verdade = true;

}