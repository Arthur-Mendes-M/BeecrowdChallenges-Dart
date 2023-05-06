import 'dart:io';

void main() {
  int numberOne = int.parse(stdin.readLineSync() ?? "0");
  int numberTwo = int.parse(stdin.readLineSync() ?? "0");

  final List<int> allOddNumbers = [];

  for(var i = numberTwo + 1; i < numberOne; i++) {
    if(i % 2 != 0) {
      allOddNumbers.add(i);
    }
  }
  
  if(allOddNumbers.length == 0) {
    print(0);
  } else if(allOddNumbers.length == 1) {
    print(allOddNumbers[0]);
  } else {
    int sum = allOddNumbers.reduce((a, b) => a + b);
    print(sum);
  }
}