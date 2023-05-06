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

  int counter = 0;

  for(var i = 0; i < allNumbers.length; i++) {
    if(allNumbers[i] % 2 == 0) {
      counter++;
    }
  }

  print("${counter} valores pares");
}