import 'dart:io';

void main() {
  int counter = 0;
  final List<int> allNumbers = [];
  final List<int> pairNumbers = [];
  final List<int> oddNumbers = [];
  
  while(counter < 15) {
    allNumbers.add(int.parse(stdin.readLineSync() ?? "0"));
    counter++;
  }

  allNumbers.forEach((number) => {
    if(number % 2 == 0) {
      
      if(pairNumbers.length < 5) {
        pairNumbers.add(number)
      } else {
        pairNumbers.asMap().forEach((index, element) => print("par[${index}] = ${element}")),
        pairNumbers.clear(),
        pairNumbers.add(number)
      }
      
    }else {
      
      if(oddNumbers.length < 5) {
        oddNumbers.add(number)
      } else {
        oddNumbers.asMap().forEach((index, element) => print("impar[${index}] = ${element}")),
        oddNumbers.clear(),
        oddNumbers.add(number)
      }
      
    },
  });

  if(oddNumbers.isNotEmpty) {
   oddNumbers.asMap().forEach((index, element) => print("impar[${index}] = ${element}"));
  }
  if(pairNumbers.isNotEmpty) {    
    pairNumbers.asMap().forEach((index, element) => print("par[${index}] = ${element}"));
  }
}