import "dart:io";

void main(){
  List counts = [];
  for (int i = 1; i <= 7; i++){
    stdout.write("Введіть кількість відвідувачив в $i день: ");
    counts.add(int.parse(stdin.readLineSync() ?? ""));
  }

  int min = counts[0];

  for (int el in counts){
    if(el <= min){
      min = el;
    }
  }

  for (int i = 1; i < counts.length+1; i++){
    if(counts[i-1] == min){
      print("Кілкість відвідувачів в $i день була мінімальною");
    }
  }
}