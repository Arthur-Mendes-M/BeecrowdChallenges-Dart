import 'dart:io';

void main() {
  final numbers = (stdin.readLineSync() ?? '0 0 0').split(" ");
  double A = double.parse(numbers[0]);
  double B = double.parse(numbers[1]);
  double C = double.parse(numbers[2]);

  String result;

  if((B + C > A) && (A + C > B) && (A + B > C)) {
    result = "Perimetro = ${A + B + C}";
  } else {
    result = "Area = ${((A + B) * C) / 2}";
  }

  print(result);
}