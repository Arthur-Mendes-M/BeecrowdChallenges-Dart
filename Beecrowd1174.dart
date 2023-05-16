import 'dart:io';

void main() {
  int inputCounter = 100;
  int currentInputCounter = 0;
  final List<double> allNumbers = [];
  
  while(currentInputCounter < inputCounter) {
    double currentInput = double.parse(stdin.readLineSync() ?? '0');
    allNumbers.add(currentInput);

    currentInputCounter++;
  }

  allNumbers.asMap().forEach((index, value) {
    if(value <= 10) {
      print("A[${index}] = ${value.toStringAsFixed(1)}");
    }
  });
}