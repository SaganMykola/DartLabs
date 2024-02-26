import 'dart:io';

void main(){
  bool isRepeat = false;
  stdout.write("Введіть число: ");
  int number = int.parse(stdin.readLineSync() ?? "");

  List list = [];

  while(number > 0){
    int digit = number % 10;

    if(list.contains(digit)){
      isRepeat = true;
      break;
    }

    list.add(digit);
    number ~/= 10;
  }

  if (isRepeat){
    print("Цифри повторюються");
  }
  else{
    print("Всі цифри різні");
  }
}