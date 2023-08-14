import 'dart:io';

void main() {
  print("enter your 1 number ");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("enter your 2 number ");
  int? num2 = int.parse(stdin.readLineSync()!);

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;
  print("after swaping num1=$num1, num2=$num2 ");
}
