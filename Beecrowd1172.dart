import 'dart:io';

void main() {
  int numberOfNumbers = 10;
  int currentInput = 0;
  List<int> numbersList = [];
  List<int> allCorrectNumbers = [];

  while(currentInput < numberOfNumbers) {
    int input = int.parse(stdin.readLineSync() ?? '0');
    numbersList.add(input);
     
    currentInput++;
  }

  for(int item in numbersList) {
    if(item <= 0) {
      allCorrectNumbers.add(1);
    } else {
      allCorrectNumbers.add(item);
    }
  }

  for(int i = 0; i < allCorrectNumbers.length; i++) {
    print("X[${i}] = ${allCorrectNumbers[i]}");
  }
}