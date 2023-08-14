import 'dart:io';

void main() {
  print("enter your value");
  int? num = int.parse(stdin.readLineSync()!);

  if (num >= 0) {
    print("value is positive");
  } else {
    print("value is negative");
  }
}
