import 'dart:io';

void main() {
  print("enter your name ");
  String? name = (stdin.readLineSync()!);

  print("enter your address ");
  String? address = (stdin.readLineSync()!);

  print("enter your age ");
  int? age = int.parse(stdin.readLineSync()!);

  print("enter your birthdate");
  int? bob = int.parse(stdin.readLineSync()!);
}
