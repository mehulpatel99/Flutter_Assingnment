import 'dart:io';

void main() {
  print("Enter marks of 5 subjects:");

  print("enter your geography number");
  int subject1 = int.parse(stdin.readLineSync()!);
  print("enter your math number :");
  int subject2 = int.parse(stdin.readLineSync()!);
  print("enter your english number :");
  int subject3 = int.parse(stdin.readLineSync()!);
  print("enter your hindi number :");
  int subject4 = int.parse(stdin.readLineSync()!);
  print("enter your sanskrit number :");
  int subject5 = int.parse(stdin.readLineSync()!);

  int totalMarks = subject1 + subject2 + subject3 + subject4 + subject5;
  double percentage = (totalMarks / 500) * 100;

  String grade;
  if (percentage > 75) {
    grade = "Distinction";
  } else if (percentage > 60) {
    grade = "First class";
  } else if (percentage > 50) {
    grade = "Second class";
  } else if (percentage > 35) {
    grade = "Pass class";
  } else {
    grade = "Fail";
  }

  print("Total marks: $totalMarks");
  print("Percentage: $percentage%");
  print("Grade: $grade");
}
