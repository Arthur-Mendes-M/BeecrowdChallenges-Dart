import 'dart:io';

void main() {
  int inputCounter = 20;
  int currentInputCounter = 0;
  final List<int> allNumbers = [];
  
  while(currentInputCounter < inputCounter) {
    int currentInput = int.parse(stdin.readLineSync() ?? '0');
    allNumbers.add(currentInput);

    currentInputCounter++;
  }

  allNumbers.reversed.toList().asMap().forEach((index, value) {
    print("N[${index}] = ${value}");
  });
}