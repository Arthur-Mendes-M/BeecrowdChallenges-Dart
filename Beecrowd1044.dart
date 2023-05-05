import 'dart:io';

void main() {
  final List<String> numbers = (stdin.readLineSync() ?? "0 0").split(" ");

  int numberOne = int.parse(numbers[0]);
  int numberTwo = int.parse(numbers[1]);

  if(numberTwo % numberOne == 0 || numberOne % numberTwo == 0) {
    print("Sao Multiplos");
  } else {
    print("Nao sao Multiplos");
  }
}