import 'dart:io';

class set1 {
  set1() {
    var set3 = new Set();
    print("enter your number");
    int? num = int.parse(stdin.readLineSync()!);
    print("enter your name");
    String? name = stdin.readLineSync()!;

    set3.add(num);
    set3.add(name);

    for (var item in set3) {
      print(set3);
    }
  }
}

void main() {
  var obj = set1();
  // obj.dishplay();
}
