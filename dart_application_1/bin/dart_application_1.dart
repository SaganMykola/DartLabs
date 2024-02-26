import 'dart:io';

void main(){
  stdout.write("Введіть символ: ");
  String letter = stdin.readLineSync() ?? "";
  int number = letter.codeUnitAt(0) + 3;
  String result = String.fromCharCode(number);
  print(result);
}