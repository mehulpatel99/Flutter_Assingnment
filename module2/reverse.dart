import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  print("Numbers in reverse order:");
  for (int i = num; i >= 1; i--) {
    print(i);
  }
}
