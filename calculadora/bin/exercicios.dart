import 'dart:io';

//Exercícios

/* void main() {
  print("Digite um número:");
  int numero = int.parse(stdin.readLineSync()!);
  
  int dobro = numero * 2;

  print("O dobro do número $numero é: $dobro");
} */

/* void main() {
  print("Digite a idade da primeira pessoa:");
  double idade1 = double.parse(stdin.readLineSync()!);
  
  print("Digite a idade da segunda pessoa:");
  double idade2 = double.parse(stdin.readLineSync()!);

  print("Digite a idade da terceira pessoa:");
  double idade3 = double.parse(stdin.readLineSync()!);

  double media = (idade1 + idade2 + idade3) / 3;

  print("A média das idades é $media");
} */

/* void main() {
  String nome = "Caio";
  String cpf = "100.000.000";
  int idade = 21;
  double altura = 1.71;
  bool comunidade = false;

  print(
    "Eu sou $nome, \n"
    "Meu CPF é: $cpf, \n"
    "Sou membro da comunidade? $comunidade, \n"
    "Eu tenho $altura metros de altura e \n"
    "$idade anos de idade"
  );
} */

/*  void main() {
  print("Digite as horas trabalhadas:");
  int horasTrabalhadas = int.parse(stdin.readLineSync()!);
  
  double salarioPorHora = 50.0;

  double salarioBruto = salarioPorHora * horasTrabalhadas;

  double desconto = salarioBruto * 0.05;

  double salarioLiquido = salarioBruto - desconto;

  print("O sálario liquido é R\$ $salarioLiquido");
}  */

/* import 'dart:io';

double saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  saldo -= valorPix;

  print('Pix realizado com sucesso!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
} */

/* void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");

  pontosRetirados = double.parse(stdin.readLineSync()!);

  double pontosRestantes = calcularPontosRestantes(pontosIniciais, pontosRetirados);

  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
}  

double calcularPontosRestantes(double pontosIniciais, double pontosRetirados) {
  return pontosIniciais - pontosRetirados;
} */

/*  void main() {
  
  print("Quantos reais você gastou?");

  double valorGasto = double.parse(stdin.readLineSync()!);

  int cupons = (valorGasto / 50).floor();

  print("Você recebeu $cupons cumpom(s) para esta compra");
}  */

/* void main() {
  print("Digite sua idade:");

  int idade = int.parse(stdin.readLineSync()!);

  if(idade >= 18){
    print("Você é maior de idade, pode dirigir!");
  } else {
    print("Você não é maior de idade, não pode dirigir!");
  }
} */

/*
void main() {
  print("Escolha um número entre 1 a 12 para escolher um mês do ano.");

  int numeroDoMesDoAno = int.parse(stdin.readLineSync()!);

  void mesesDoAno() {
    switch (numeroDoMesDoAno) {
      case 1:
        print("Janeiro");
      case 2:
        print("Fevereiro");
      case 3:
        print("Março");
      case 4:
        print("Abril");
      case 5:
        print("Maio");
      case 6:
        print("Junho");
      case 7:
        print("Julho");
      case 8:
        print("Agosto");
      case 9:
        print("Setembro");
      case 10:
        print("Outubro");
      case 11:
        print("Novembro");
      case 12:
        print("Dezembro");
      default:
        print("Erro, escolha um mês que exista");
    }
  }

  print("Mês escolhido:");
  mesesDoAno();
} */

/*
double saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  if (valorPix <= saldo) {
    saldo -= valorPix;
    print("Pix no valor de R\$${valorPix.toStringAsFixed(2)} reais realizado com sucesso.");
    print("Seu saldo agora é de: R\$${saldo.toStringAsFixed(2)} reais.");
  } else {
    print("Saldo insuficiente");
  }
}*/

/* void main() {
  print("Digite sua idade:");

  int idade = int.parse(stdin.readLineSync()!);

  print("Digite seu país:");

  String? country = stdin.readLineSync()!.toLowerCase();

  if (idade >= 18 && country == "brasil" ||
      idade >= 16 && country == "eua" ||
      idade >= 20 && country == "japao") {
        print("Você é maior de idade, pode dirigir!");
      } else {
        print("Você não é maior de idade, não pode dirigir!");
      }
}
 */

/* void main() {
  List<String> categoriaProduto = ["eletronicos", "alimentos", "vestuario", "livro"];
  
  void validarEstoque() {
    print("Digite a categoria do produto: ${categoriaProduto.toString()} ");
    String? entrada = stdin.readLineSync();

    print("Categoria válida: $entrada");
  }

  validarEstoque();
} */

/* void main() {
  String? entrada = '';
  List<String> tipoArquivos = ["pdf", "jpg", "png", "docx"];
  
  void validarArquivo() {
    print("Digite o tipo de arquivo a ser enviado: ${tipoArquivos.toString()} ");
    entrada = stdin.readLineSync();

    if(entrada != null) {
      if (tipoArquivos.contains(entrada)) {
        print("Tipo de arquivo escolhido: $entrada");
      } else {
        print("Digite um tipo de arquivo válido");
        validarArquivo();
      }
    }
  }

  validarArquivo();
} */

/* void main() {
  solicitarNumero();
}

void solicitarNumero() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');
  String? input = stdin.readLineSync();

  int numero;

  if (input == null) {
    print('Número inválido, digite um número de mês entre 1 a 12!');
    solicitarNumero();
    return;
  }

  numero = int.parse(input);

  String mes = obterMes(numero);
  print(mes);

  if (mes == 'Número inválido. Por favor, insira um número de 1 a 12.') {
    solicitarNumero();
  }
}

String obterMes(int numero) {
    switch (numero) {
      case 1:
        return 'Janeiro';
      case 2:
        return 'Fevereiro';
      case 3:
        return 'Março';
      case 4:
        return 'Abril';
      case 5:
        return 'Maio';
      case 6:
        return 'Junho';
      case 7:
        return 'Julho';
      case 8:
        return 'Agosto';
      case 9:
        return 'Setembro';
      case 10:
        return 'Outubro';
      case 11:
        return 'Novembro';
      case 12:
        return 'Dezembro';
      default:
        return 'Número inválido. Por favor, insira um número de 1 a 12.';
    }
  } */

/*void main() {
  List<String> operacoes = ['deposito', 'retirada', 'transferencia', 'pagamento'];

  String? operacao;

  operacao = validarOperacao(operacao, operacoes);

  double? valor;

  valor = validarValor(valor);

  print("Operação escolhida: $operacao, Valor: $valor");
}

double? validarValor(double? valor) {
  print("Digite o valor da operação:");
  valor = double.tryParse(stdin.readLineSync()!);

  if (valor == null || valor <= 0) {
    print("Operação inválida, tente novamente.");
    return validarValor(valor);
  } else {
    return valor;
  }
}

String? validarOperacao(String? operacao, List<String> operacoes) {
  print('Digite uma operação (deposito, retirada, transferencia, pagamento):');
  operacao = stdin.readLineSync();

    if (operacoes.contains(operacao)) {
      return operacao;
    } else {
      print("Operação inválida, tente novamente");
      return validarOperacao(operacao, operacoes);
    }
}*/

void main() {

  List<String> metodoDePagamento = ["cartao", "boleto", "paypal", "pix"];

  String? metodo;

  metodo = pagamento(metodo, metodoDePagamento);

  double? valor;

  valor = valorPagamento(valor);

  print("Operação escolhida: $metodo, Valor: R\$$valor");
}


String? pagamento(String? metodo, List<String> metodoDePagamento) {
  print("Digite um método de pagamento (cartao, boleto, paypal, pix)");
  metodo = stdin.readLineSync();

  if (metodoDePagamento.contains(metodo)) {
    return metodo;
  } else {
    print("Método de pagamento selecionado: $metodo não existe, tente novamente!");
    return pagamento(metodo, metodoDePagamento);
  }
}

double? valorPagamento (double? valor) {
  print("Digite um valor de pagamento");
  valor = double.parse(stdin.readLineSync()!);

  if (valor <= 0) {
    print("Erro ao pagar, tente novamente!");
    return valorPagamento({valor.toStringAsFixed(2)} as double?);
  } else {
    return valor;
  }
}