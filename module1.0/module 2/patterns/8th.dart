import 'dart:io';

void main() {
  print("enter the number ");
  var n = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= n - i; j++) {
      stdout.write(" ");
    }
    for (var a = 1; a <= i - 1; a++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }
}
