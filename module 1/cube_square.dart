import 'dart:io';

void main() {
  print("enter your number ");
  double? num = double.parse(stdin.readLineSync()!);

  double square = num * num;
  double cube = num * num * num;
  print("your square value is = $square");
  print("your cube value is = $cube");
}
