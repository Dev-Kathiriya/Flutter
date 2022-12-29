// Create a class named Member having the following members:
// 1 - Name
// 2 - Age
// 3 - Phone number
// 4 - Address
// 5 - Salary
// It also has a method named printSalary() which prints the salary of the members. Two classes
// Employee and Manager inherit the Member class. The Employee and Manager classes have
// data members specialization and department respectively. Now, assign name, age,
// phone_number, address and salary to an Employee and Manager by making an object of both
// of these classes and print the same along with specialization and department respectively.
import 'dart:io';

class Member {
  late String name, address;
  late int age, phoneNo, salary;
  Member() {
    this.name = stdin.readLineSync()!;
    this.age = int.parse(stdin.readLineSync()!);
    this.phoneNo = int.parse(stdin.readLineSync()!);
    this.address = stdin.readLineSync()!;
    this.salary = int.parse(stdin.readLineSync()!);
  }
  void printSalary() => print('Salary: ${salary}');
}

class Employee extends Member {
  late String specialization;
  Employee() {
    this.specialization = stdin.readLineSync()!;
  }
  @override
  void printSalary() {
    super.printSalary();
    print('Specialization: $specialization');
  }
}

class Manager extends Member {
  late String department;
  Manager() {
    this.department = stdin.readLineSync()!;
  }
  @override
  void printSalary() {
    super.printSalary();
    print('Specialization: $department');
  }
}

void main(List<String> args) {
  print(
      'Enter 1 - Name, 2 - Age, 3 - Phone number, 4 - Address, 5 - Salary, 6- specialization for Employee \n Enter 1 - Name, 2 - Age, 3 - Phone number, 4 - Address, 5 - Salary, 6- specialization for Manager');
  Employee().printSalary();
  Manager().printSalary();
}
