import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync() ?? "0");

  for(var i = 1; i <= number; i++) {
    if(i % 2 != 0) {
      print(i);
    }
  }
}