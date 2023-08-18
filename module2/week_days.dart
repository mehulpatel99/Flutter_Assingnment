import 'dart:io';

void main() {
  print("Enter a number between 1 and 7:");
  int? dayNum = int.parse(stdin.readLineSync()!);

  String dayName;
  switch (dayNum) {
    case 1:
      dayName = "Monday";
      break;
    case 2:
      dayName = "Tuesday";
      break;
    case 3:
      dayName = "Wednesday";
      break;
    case 4:
      dayName = "Thursday";
      break;
    case 5:
      dayName = "Friday";
      break;
    case 6:
      dayName = "Saturday";
      break;
    case 7:
      dayName = "Sunday";
      break;
    default:
      dayName = "Invalid day number";
  }

  print("The day of the week is: $dayName");
}
