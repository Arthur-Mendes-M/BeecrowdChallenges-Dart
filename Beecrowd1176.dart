import 'dart:io';

void main() {
  final number = int.parse(stdin.readLineSync() ?? "0");
  final fibonacci = [0, 1];

  for (int i = 2; i <= 60; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  for (int i = 0; i < number; i++) {
    final x = int.parse(stdin.readLineSync() ?? "0");
    print('Fib($x) = ${fibonacci[x]}');
  }
}