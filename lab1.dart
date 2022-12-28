import 'dart:io';

double bmi(double k, double h) {
  return k / (h * h);
}

void main(List<String> args) {
  //1 Write a dart code to print your name in the console.
  print('Dev Kathiriya');
  //2 Write a dart code to print the addition of 2 numbers.
  print("Add 2 No.");
  print(double.parse(stdin.readLineSync()!) +
      double.parse(stdin.readLineSync()!));
  //3 Write a dart code to convert temperature from Fahrenheit to Celsius.[°C = [(°F-32)×5]/9, °F = °C* 1.8000]
  print("Enter Fahrenheit");
  print(
      "Celsius: ${(double.parse(stdin.readLineSync()!) - 32) * 5 / 9} \nEnter Celsius");
  print("Fahrenheit: ${double.parse(stdin.readLineSync()!) * 1.8 + 32}");
  //4 Write a dart code to find the percentage of 5 subjects.
  print("Enter 5 Subjects Marks, ");
  print((double.parse(stdin.readLineSync()!) +
          double.parse(stdin.readLineSync()!) +
          double.parse(stdin.readLineSync()!) +
          double.parse(stdin.readLineSync()!) +
          double.parse(stdin.readLineSync()!)) /
      5);
  //5 Write a dart code that reads a number in meters, converts it to feet, and displays the result.
  print('Enter Meters: ');
  print("Feet ${double.parse(stdin.readLineSync()!) * 3.28084}");
  //6 Body Mass Index (BMI) is a measure of health on weight. It can be calculated by taking your weight in kilograms and dividing by the square of your height in meters. Write a dart code that
  print('Enter Your Weight & height ');
  print(
      'Your BMI is ${bmi(double.parse(stdin.readLineSync()!), double.parse(stdin.readLineSync()!))}');
  //7 prompts the user to enter a weight in pounds and height in inches and display the BMI.Note: 1 pound = .45359237 kg and 1 inch = 0.254 meters
  print('Enter Your Weight & height in pounds and inches ');
  print(
      'Your BMI is ${bmi(double.parse(stdin.readLineSync()!) * .45359237, double.parse(stdin.readLineSync()!) * 0.254)}');
}
