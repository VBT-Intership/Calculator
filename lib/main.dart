import 'dart:io';

void chooseScreen() {
  print("Hello My Beautiful Calculator \n");
  print("-----------------------------\n");
  print(""" + \t - \t * \t / \t \n \n 1 \t 2 \t 3 \t 4 \t \n""");
}

sum(double x, double y) {
  double sumResult = (x + y);
  if (sumResult % 1 == 0) {
    return sumResult.round();
  } else {
    return sumResult;
  }
}

substraction(double x, double y) {
  double substractionResult = x - y;
  if (substractionResult % 1 == 0) {
    return substractionResult.round();
  } else {
    return substractionResult;
  }
}

multiplication(double x, double y) {
  double multiplicationResult = x * y;
  if (multiplicationResult % 1 == 0) {
    return multiplicationResult.round();
  } else {
    return multiplicationResult;
  }
}

division(double x, double y) {
  double divisionResult;
  if (y == 0) {
    print("You can't divide a number by zero !!");
  } else {
    divisionResult = x / y;
    if (divisionResult % 1 == 0) {
      return divisionResult.round();
    } else {
      return divisionResult;
    }
  }
}

void main() {
  var exitOrContinue = "y";
  do {
    chooseScreen();
    String choose = stdin.readLineSync();
    switch (choose) {
      case "1":
        print("Number 1: ");
        double x = double.parse(stdin.readLineSync());
        print("Number 2: ");
        double y = double.parse(stdin.readLineSync());
        print("Result : ");
        print(sum(x, y));
        break;
      case "2":
        print("Number 1: ");
        double x = double.parse(stdin.readLineSync());
        print("Number 2: ");
        double y = double.parse(stdin.readLineSync());
        print("Result : ");
        print(substraction(x, y));
        break;
      case "3":
        print("Number 1: ");
        double x = double.parse(stdin.readLineSync());
        print("Number 2: ");
        double y = double.parse(stdin.readLineSync());
        print("Result : ");
        print(multiplication(x, y));
        break;
      case "4":
        print("Number 1: ");
        double x = double.parse(stdin.readLineSync());
        print("Number 2: ");
        double y = double.parse(stdin.readLineSync());
        print("Result : ");
        print(division(x, y));
        break;
      default:
        print("Please use the numbers in the table ..");
        break;
    }
    print("Continue = y or Exit = n\n");
    exitOrContinue = stdin.readLineSync();
  } while (exitOrContinue == "y");
}
