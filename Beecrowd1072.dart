import 'dart:io';

void main() {
  int quantity = int.parse(stdin.readLineSync() ?? "0");
  int couter = 0;
  final List<int> allNumbers = [];

  int numberIn = 0;
  int numberOut = 0;

  while(couter < quantity) {
    int currentNumber = int.parse(stdin.readLineSync() ?? "0");

    allNumbers.add(currentNumber);

    couter++;
  }

  allNumbers.forEach((number) {
    if(number >= 10 && number <= 20) {
      numberIn++;
    } else {
      numberOut++;
    }
  });

  print("${numberIn} in");
  print("${numberOut} out");
}