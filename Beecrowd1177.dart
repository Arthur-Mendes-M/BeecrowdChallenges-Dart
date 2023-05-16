import 'dart:io';

void main() {
  final int number = int.parse(stdin.readLineSync() ?? "0");
  int counter = 0;
  
  for(int i = 0; i < 1000; i++) {
    if(counter == number) {
      counter = 0;
    }

    print("N[${i}] = ${counter}");
    counter++; 
  }
}