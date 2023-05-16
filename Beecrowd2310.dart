import 'dart:io';

void main() {
  int quantityPlayers = int.parse(stdin.readLineSync() ?? "0");
  int counter = 0;
  List S = [];
  List B = [];
  List A = [];

  List S1 = [];
  List B1 = [];
  List A1 = [];

  while(counter < quantityPlayers) {
    // Name
    stdin.readLineSync();
    
    // Attempts
    List attempets = (stdin.readLineSync() ?? "0").split(" ");
    S.add(int.parse(attempets[0]));
    B.add(int.parse(attempets[1]));
    A.add(int.parse(attempets[2]));

    // Success
    List success = (stdin.readLineSync() ?? "0").split(" ");
    S1.add(int.parse(success[0]));
    B1.add(int.parse(success[1]));
    A1.add(int.parse(success[2]));
    
    counter++;
  }

  int calcS = S.reduce((a, b) => a + b);
  int calcS1 = S1.reduce((a, b) => a + b);
  double percentS = (calcS1 / calcS) * 100;

  int calcB = B.reduce((a, b) => a + b);
  int calcB1 = B1.reduce((a, b) => a + b);
  double percentB = (calcB1 / calcB) * 100;

  int calcA = A.reduce((a, b) => a + b);
  int calcA1 = A1.reduce((a, b) => a + b);
  double percentA = (calcA1 / calcA) * 100;


  print("Pontos de Saque: ${percentS.toStringAsFixed(2)} %.");
  print("Pontos de Bloqueio: ${percentB.toStringAsFixed(2)} %.");
  print("Pontos de Ataque: ${percentA.toStringAsFixed(2)} %.");
}