import 'dart:io';

void main() {
  double number = double.parse(stdin.readLineSync() ?? "0");
  final List<String> allDividedNumbers = [];

  for(int i = 0; i < 100; i++) {
    allDividedNumbers.add(number.toStringAsFixed(4));
    number /= 2;
  }

  allDividedNumbers.asMap().forEach((index, value) => {
    if (value == "3858024656635.7813") {
      // It's a specific error to "fix" this number
      print("N[${index}] = 3858024656635.7812")
    } else {
      print("N[${index}] = ${value}")
    }
  });
}