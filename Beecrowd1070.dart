import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync() ?? "0");
  int counter = 1;

  while(counter <= 6) {
    if(number % 2 != 0) {
      print(number);
      counter++;
    }
    number++;
  }
}