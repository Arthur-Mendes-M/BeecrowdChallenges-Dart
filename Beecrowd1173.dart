import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync() ?? '');
  int counter = 1;
  int result = number;
  int index = 0;
  
  while(counter <= 10) {
    print("N[${index}] = ${result}");
    
    result *= 2;
    index++;
    counter++;
  }
}