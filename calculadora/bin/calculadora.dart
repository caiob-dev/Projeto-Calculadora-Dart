import 'dart:io';

void main() {
  double numero1 = 0;
  double numero2 = 0;
  String operacao = '';
  List<String> operacoes = <String>["somar", "subtrair", "multiplicar", "dividir"];
  String? entrada = '';

  void somar() {
    print(numero1 + numero2);
  }

  void subtrair() {
    print(numero1 - numero2);
  }

  void multiplicar() {
    print(numero1 * numero2);
  }

  void dividir() {
    print(numero1 / numero2);
  }

  void calcular() {
    switch (operacao) {
      case "somar":
        somar();
        break;
      case "subtrair":
        subtrair();
        break;
      case "multiplicar":
        multiplicar();
        break;
      case "dividir":
        dividir();
        break;
      default:
        print("Não existe essa operação.");
        break;
    }
  }

   void getOperacao() {
    print("Digite uma operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();

    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!; //garante que não seja nulo
      } else {
        print("Essa operação '$entrada' não existe, digite uma operação válida!");
        getOperacao();
      }
    }
  }

  print('Digite o primeiro número:');
  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numero1 = double.parse(entrada!);
    }
  }

 getOperacao();

  print('Digite o segundo número:');
  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {  // isNotEmpty
      numero2 = double.parse(entrada!);
    }
  }

  print("O resultado da operação é:");

  calcular();
} 

