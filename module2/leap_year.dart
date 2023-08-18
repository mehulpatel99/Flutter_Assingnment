import 'dart:io';

void main() {
  print("enter your year");
  int? num = int.parse(stdin.readLineSync()!);
  if (num % 4 == 0 && num % 100 != 0) {
    print("your year is leap year");
  } else {
    print("not leap year");
  }
}
