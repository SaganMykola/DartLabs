import 'dart:io';

void main(){
  stdout.write("Введіть номер дня тижня: ");
  int number = int.parse(stdin.readLineSync() ?? "");
  if(number <= 5){
    print("Робочий день");
  }
  else{
    print("Вихідний");
  }
}