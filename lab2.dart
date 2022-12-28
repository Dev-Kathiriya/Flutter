import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  //1 Write a dart code to check whether the given number is positive or negative.
  print('1)Enter No: ');
  print("No is ${int.parse(stdin.readLineSync()!) % 2 == 0 ? 'Even' : 'Odd'}");
  //2 Write a dart code to perform Addition, Subtraction, Multiplication, Division based on user choice using if, if..else..if, & switch.
  print('2)Enter 2 No and then Operation Symbole: ');
  double a = double.parse(stdin.readLineSync()!),
      b = double.parse(stdin.readLineSync()!);
  String opr = stdin.readLineSync()!;
  print('With if else');
  if (opr == '+')
    print(a + b);
  else if (opr == '-')
    print(a - b);
  else if (opr == '/')
    print(a / b);
  else if (opr == '*')
    print(a * b);
  else
    print('Invalid Opr');
  print('With Switch');
  switch (opr) {
    case '+':
      print(a + b);
      break;
    case '-':
      print(a - b);
      break;
    case '/':
      print(a / b);
      break;
    case '*':
      print(a * b);
      break;
    default:
      print('Invalid Opr');
  }
  //3 Write a dart code to find out the largest number from three numbers without using Logical Operator.
  print('3) Enter 3 no: ');
  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  print('${a > b ? (a > c ? a : c) : (b > c ? b : c)} is Largest');
  //4 Write a dart code to read marks of five subjects. Calculate percentage and print class accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60 to 70, Distinction if more than 70.
  print('4) Enter 5 Subjects Marks out of 100');
  print(
      'Percentage: ${(double.parse(stdin.readLineSync()!) + double.parse(stdin.readLineSync()!) + double.parse(stdin.readLineSync()!) + double.parse(stdin.readLineSync()!) + double.parse(stdin.readLineSync()!)) / 5}');
  //5 Write a dart code to find out the largest number from the given 3 numbers using the conditional operator.
  print('5) Enter 3 no: ');
  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);
  c = double.parse(stdin.readLineSync()!);
  print('${a > b ? (a > c ? a : c) : (b > c ? b : c)} is Largest');
  //6 Write a dart code to make a Simple Calculator using switch...case.
  print('6)Enter 2 No and then Operation Symbole: ');
  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);
  opr = stdin.readLineSync()!;
  switch (opr) {
    case '+':
      print(a + b);
      break;
    case '-':
      print(a - b);
      break;
    case '/':
      print(a / b);
      break;
    case '*':
      print(a * b);
      break;
    default:
      print('Invalid Opr');
  }
}
