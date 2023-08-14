import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  int num1 = 0, num2 = 1;
  print("Fibonacci series up to $num:");

  for (int i = 1; i <= num; i++) {
    print(num1);
    int sum = num1 + num2;
    num1 = num2;
    num2 = sum;
  }
}
