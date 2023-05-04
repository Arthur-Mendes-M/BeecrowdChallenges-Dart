import 'dart:io';

void main() {
  final List<String> purchase = (stdin.readLineSync() ?? "0 0").split(" ");

  int productId = int.parse(purchase[0]);
  int productQuantity = int.parse(purchase[1]);
  double price;
  final List allIds = [1, 2, 3, 4, 5];

  if(!allIds.contains(productId) || productQuantity <= 0) {
    return print('Erro! Tente colocar valores válidos');
  }
  
  double calcValue(int quantity, double value) {
    return quantity * value;
  }

  switch (productId) {
    case 1:
      price = 4.00;
      break;
    case 2:
      price = 4.50;
      break;
    case 3:
      price = 5.00;
      break;
    case 4:
      price = 2.00;
      break;
    case 5:
      price = 1.50;
      break;
    default:
      price = 0.00;
      break;
  }

  String total = calcValue(productQuantity, price).toStringAsFixed(2);

  print("Total: R\$ ${total}");
}