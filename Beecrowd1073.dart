import 'dart:io';
import 'dart:math';

void main() {
  int number = int.parse(stdin.readLineSync() ?? "0");
  int counter = 2;
  
  while(counter <= number) {
    if(counter % 2 == 0) {
      print("${counter}^2 = ${pow(counter, 2)}");
    }
    
    counter++;
  }
}