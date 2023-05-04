import 'dart:io';

void main() {
  final inputedValues = (stdin.readLineSync() ?? '0 0 0').split(" ");
  final numbers = [
    int.parse(inputedValues[0]),
    int.parse(inputedValues[1]),
    int.parse(inputedValues[2])
  ];

  int fourth = numbers[0];
  int fifth = numbers[1];
  int sixth = numbers[2];
  
  numbers.sort();

  int first = numbers[0];
  int second = numbers[1];
  int third = numbers[2];
  
  print("${first}\n${second}\n${third}\n\n${fourth}\n${fifth}\n${sixth}");
}
