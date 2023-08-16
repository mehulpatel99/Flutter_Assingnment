import 'dart:io';

void main() {
  List mehul = [];
  var name1;
  bool status = true;
  while (status) {
    String? menu = """  
                       MENU             
                   1)Add product
                   2)Remove product
                              """;
    print(menu);
    print("enter your choice ");
    int? num1 = int.parse(stdin.readLineSync()!);
    if (num1 == 1) {
      print("enter your name :");
      String? name = stdin.readLineSync()!;
      print("enter how much you want to add product: ");
      int? num = int.parse(stdin.readLineSync()!);

      for (int i = 1; i <= num; i++) {
        print("enter $i product name :");
        name1 = stdin.readLineSync()!;
        print("enter  product quantity :");
        int? num = int.parse(stdin.readLineSync()!);
        mehul.add(name1);
        mehul.add(num);
      }
      print("\n\n---------------------------------");
      for (var item in mehul) {
        print(item);
      }
      print("do you want to perform more operation:\ny for yes \nn for no ");
      String? choose = stdin.readLineSync()!;
      if (choose == "y") {
        status = true;
      } else {
        status = false;
      }
    } else {
      print(mehul);

      print("enter your remove product:");
      String? remove1 = stdin.readLineSync()!;
      mehul.remove(remove1);
      print(mehul);

      print("do you want to perform more operation:\ny for yes \nn for no ");
      String? choose = stdin.readLineSync()!;
      if (choose == "y") {
        status = true;
      } else {
        status = false;
      }
    }
  }
}
