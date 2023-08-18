import 'dart:io';

void main() {
  // int a, b;
  print("enter your first number : ");
  int? a = int.parse(stdin.readLineSync()!);

  print("enter your second number : ");
  int? b = int.parse(stdin.readLineSync()!);

  print("1.subtract\n 2.divide\n 3.subtract\n 4.multiply \n 5.----ALL----");
  int? c = int.parse(stdin.readLineSync()!);

  switch (c) {
    case 1:
      int c = a - b;
      print("your subtract is :$c");
      break;

    case 2:
      double c = a / b;
      print("your subtract is :$c");
      break;

    case 3:
      int c = a + b;
      print("your addition is :$c");
      break;

    case 4:
      int c = a * b;
      print("your multiply is :$c");
      break;

    case 5:
      int c = a * b;
      int d = a - b;
      int e = a + b;
      double f = a / b;
      print("your multiply is :$c");
      print("your subtract is :$d");
      print("your addition is :$e");
      print("your divide is :$f");
      break;
  }
}
