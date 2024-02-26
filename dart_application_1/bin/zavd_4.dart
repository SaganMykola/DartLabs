import 'dart:io';

void main(){
  stdout.write("Введіть кількість рядків: ");
  int rows = int.parse(stdin.readLineSync() ?? "");
  stdout.write("Введіть кількість стовпців: ");
  int columns = int.parse(stdin.readLineSync() ?? "");
  String text = "text";

  table(rows, columns, text);
}

void table(int rows, int columns, String text){
  List<List<String>> table = List.generate(columns, (i) => List<String>.filled(rows, text));

  for (List el in table) {
    print(el);
  }
}