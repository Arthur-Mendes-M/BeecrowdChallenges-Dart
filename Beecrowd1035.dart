import 'dart:io';

void main() {
  final numbers = stdin.readLineSync() ?? '0 0 0 0';
  final List<String> letters = numbers.split(" ");

  int numberOne = int.parse(letters[0]);
  int numberTwo = int.parse(letters[1]);
  int numberThree = int.parse(letters[2]);
  int numberFour = int.parse(letters[3]);

  if(numberTwo > numberThree && numberFour > numberOne && (numberThree + numberFour) > (numberOne + numberTwo) && numberThree > 0 && numberFour > 0 && numberOne % 2 == 0){
    print('Valores aceitos');
  } else {
    print('Valores nao aceitos');
  }
}