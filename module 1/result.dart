import 'dart:io';

void main() {
  print("enter your math number");
  int? num1 = int.parse(stdin.readLineSync()!);

  print("enter your english number");
  int? num2 = int.parse(stdin.readLineSync()!);

  print("enter your hindi number");
  int? num3 = int.parse(stdin.readLineSync()!);

  print("enter your sanskrit number");
  int? num4 = int.parse(stdin.readLineSync()!);

  print("enter your geography number");
  int? num5 = int.parse(stdin.readLineSync()!);

  var total = num1 + num2 + num3 + num4 + num5;
  var percentage = (total / 500) * 100;

  print("your total number is $total");
  print("your percentage is $percentage");
}
