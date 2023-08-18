import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  String numString = num.toString();
  int firstDigit = int.parse(numString[0]);
  int lastDigit = int.parse(numString[numString.length - 1]);
  int sum = firstDigit + lastDigit;

  print("Summation of the first and last digit: $sum");
}
