import 'dart:io';

void main() {
  double numberOne = double.parse(stdin.readLineSync() ?? "0");
  double numberTwo = double.parse(stdin.readLineSync() ?? "0");
  double numberThree = double.parse(stdin.readLineSync() ?? "0");
  
  double numberFour = double.parse(stdin.readLineSync() ?? "0");
  double numberFive = double.parse(stdin.readLineSync() ?? "0");
  double numberSix = double.parse(stdin.readLineSync() ?? "0");

  final List<double> allNumbers = [
    numberOne, 
    numberTwo,
    numberThree,
    numberFour,
    numberFive,
    numberSix
  ];

  final List<double> allPos = [];

  for(var i = 0; i < allNumbers.length; i++) {
    if(allNumbers[i] > 0) {
      allPos.add(allNumbers[i]);
    }
  }

  double media = allPos.reduce((a, b) => a + b) / allPos.length;

  print("${allPos.length} valores positivos\n${media.toStringAsFixed(1)}");
  
}