import 'dart:io';

void main() {
  var student_list = new Map();
  var assesment;
  var assingnment;
  bool status = true;
  while (status) {
    String? menu = """
                 menu
                 1).create student list
                 2).View student work
                 """;

    print(menu);
    print("enter your choice");
    var choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        bool status = true;
        while (status) {
          print("enters hows student you want to add");
          int? num = int.parse(stdin.readLineSync()!);
          for (int i = 1; i <= num; i++) {
            var student = new Map();
            print("enter your student name :");
            var name = stdin.readLineSync()!;
            print("enter student rollno. :");
            int? roll = int.parse(stdin.readLineSync()!);
            print("enter assingnment :");
            assingnment = int.parse(stdin.readLineSync()!);
            print("enter assesment  :");
            assesment = int.parse(stdin.readLineSync()!);

            // student["name"] = name;
            student["rollno."] = roll;
            student["assingnment"] = assingnment;
            student["assesment"] = assesment;

            student_list[name] = student;
          }
          print(student_list);

          print(
              "do you want to add more name in list \n y for yes \n n for no");
          String? choose = stdin.readLineSync()!;
          if (choose == "y") {
            status = true;
          } else {
            status = false;
          }
        }
      case 2:
        print(student_list);
        print("enter name which student you should  know detail");
        String? name = stdin.readLineSync()!;
        print("enter assesment which you want ");
        int? num1 = int.parse(stdin.readLineSync()!);
        print("enter assingnment which you want ");
        int? num2 = int.parse(stdin.readLineSync()!);
        var total = num1 + num2;
        print("your total is :$total");
    }
    print("do you want to perform more operation \n y for yes \n n for no");
    String? name1 = stdin.readLineSync()!;
    if (name1 == "y") {
      status = true;
    } else {
      status = false;
    }
  }
}
