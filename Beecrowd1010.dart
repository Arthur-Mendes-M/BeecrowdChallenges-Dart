import 'dart:io';

void main() {
  final List<String> line = stdin.readLineSync()!.split(' ');

  int cod1 = int.parse(line[0]);
  int qtd1 = int.parse(line[1]);
  int valUn1 = int.parse(line[2]);

  int cod2 = int.parse(line[3]);
  int qtd2 = int.parse(line[4]);
  int valUn2 = int.parse(line[5]);

  // Cod. qtd. v.u

  int result = (qtd1 * valUn1) + (qtd2 * valUn2);
  String formatedResult = result.toStringAsFixed(2);

  print("VALOR A PAGAR: R\$ $formatedResult");
}