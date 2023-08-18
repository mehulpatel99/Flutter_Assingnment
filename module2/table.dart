import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  print("Table of $num:");
  for (int i = 1; i <= 10; i++) {
    int num2 = num * i;
    print("$num x $i = $num2");
  }
}
