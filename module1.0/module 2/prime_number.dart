import 'dart:io';
import 'dart:math';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  if (isPrime(num)) {
    print("$num is a prime number");
  } else {
    print("$num is not a prime number");
  }
}
