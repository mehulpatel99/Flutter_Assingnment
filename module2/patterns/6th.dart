/*for (int i = num; i >= 1; i--) {
    print(i);
  }*/

import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);
  for (var i = 1; i >= num; i--) {
    for (var j = 1; j <= i; j++) {
      stdout.write("$j");
    }
    stdout.write("\n");
  }
}
