import 'dart:io';

void main() {
  final List<String> numbers = (stdin.readLineSync() ?? "2.0 6.5 4.0 9.0").split(' ');
  
  double firstGrade = double.parse(numbers[0]);
  double secondGrade = double.parse(numbers[1]);
  double thridGrade = double.parse(numbers[2]);
  double fourthGrade = double.parse(numbers[3]);
  
  double retakeGrade;

  double average = ((firstGrade * 2) + (secondGrade * 3) + (thridGrade * 4) + (fourthGrade * 1)) / 10;


  String message = "";

  if(average >= 7) {
    message = "Aluno aprovado.";
  } else if(average < 5) {
    message = "Aluno reprovado.";
  } else if(average >= 5 && average < 7) {
    message = "Aluno em exame.";
    retakeGrade = double.parse(stdin.readLineSync() ?? "0");
    message += "\nNota do exame: ${retakeGrade}";

    double finalAverage = (average + retakeGrade) / 2;

    if(finalAverage >= 5) {
      message += "\nAluno aprovado.";
    } else if(finalAverage <= 4.9) {
      message += "\nAluno reprovado.";
    }

    message += "\nMedia final: ${finalAverage.toStringAsFixed(1)}";
  }

  print("Media: ${average.toStringAsFixed(1)}\n" + message);
}