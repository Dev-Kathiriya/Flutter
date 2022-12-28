import 'dart:io';

void main(List<String> args) {
  // 1)Write a dart code to print numbers between two given numbers which are divisible by 2 but not
// divisible by 3.
  print('1) Enter 2 No');
  int no1 = int.parse(stdin.readLineSync()!),
      no2 = int.parse(stdin.readLineSync()!);
  while (no1++ < no2) if (no1 % 2 == 0 && no1 % 3 != 0) print(no1);
// 2)Write a dart code to find the factorial of the given number.
  print('2) Enter no');
  no1 = int.parse(stdin.readLineSync()!);
  no2 = no1;
  while (--no1 > 1) no2 *= no1;
  print(no2);
// 3)Write a dart code to find whether the given number is prime or not.
  print('3) Enter No');
  no1 = int.parse(stdin.readLineSync()!);
  no2 = 2;
  while (no2++ < no1 ~/ 2) if (no1 % no2 == 0) break;
  print('It is ${no2 == no1 ~/ 2 + 1 ? "prime" : "not prime"}');
// 4)Write a dart code to print a given number in reverse order.
  print('4) Enter No');
  no1 = int.parse(stdin.readLineSync()!);
  no2 = 0;
  while (no1 > 0) {
    no2 = no2 * 10 + no1 % 10;
    no1 ~/= 10;
  }
  print(no2);
// 5)Write a dart code to print the reverse string.
  print('5) Enter String');
  print(String.fromCharCodes(stdin.readLineSync()!.runes.toList().reversed));
// 6)Write a dart code program to calculate the sum of all positive even numbers and the sum of all
// negative odd numbers from a set of numbers. You can enter 0 (zero) to quit the program and
// thus it displays the result
  print(
      '6) Sum of all positive even numbers and the sum of all negative odd numbers from input  Enter 0 to Quit');
  int no3 = no2 = 0;
  while ((no1 = int.parse(stdin.readLineSync()!)) != 0) {
    if (no1 > 0 && no1 % 2 == 0)
      no2 += no1;
    else if (no1 < 0 && no1 % 2 != 0) no3 += no1;
  }
  print(
      'Sum of all positive even numbers: $no2 \nSum of all negative odd numbers: $no3');
}
