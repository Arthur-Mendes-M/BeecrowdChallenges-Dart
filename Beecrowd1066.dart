import 'dart:io';

void main() {
  int numberOne = int.parse(stdin.readLineSync() ?? "0");
  int numberTwo = int.parse(stdin.readLineSync() ?? "0");
  int numberThree = int.parse(stdin.readLineSync() ?? "0");
  int numberFour = int.parse(stdin.readLineSync() ?? "0");
  int numberFive = int.parse(stdin.readLineSync() ?? "0");

  final List<int> allNumbers = [
    numberOne,
    numberTwo,
    numberThree,
    numberFour,
    numberFive
  ];

  int pairCounter = 0;
  int oddCounter = 0;
  int positiveCounter = 0;
  int negativeCounter = 0;

  for (var i = 0; i < allNumbers.length; i++) {
    if (allNumbers[i] % 2 == 0) {
      pairCounter++;
    } else {
      oddCounter++;
    }

    if (allNumbers[i] > 0 && allNumbers[i] != 0) {
      positiveCounter++;
    } else if(allNumbers[i] < 0 && allNumbers[i] != 0) {
      negativeCounter++;
    }
  }

  print("${pairCounter} valor(es) par(es)");
  print("${oddCounter} valor(es) impar(es)");
  
  print("${positiveCounter} valor(es) positivo(s)");
  
  print("${negativeCounter} valor(es) negativo(s)");
}