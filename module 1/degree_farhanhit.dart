import 'dart:io';

void main() {
  print("Enter temperature in degree centigrade:");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print("$celsius degree centigrade is equal to $fahrenheit degree Fahrenheit");
}
// celsius