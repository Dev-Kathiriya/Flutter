// Define Time class with hour and minute as data member. Also define addition() method to add
// two-time objects.
import 'dart:io';

class Time {
  double hr, min;
  Time(this.hr, this.min);
  void addition(Time time) {
    time.min += min;
    time.hr += hr + time.min ~/ 60;
    time.min %= 60;
  }
}

void main(List<String> args) {
  Time t1 = Time(double.parse(stdin.readLineSync()!),
          double.parse(stdin.readLineSync()!)),
      t2 = Time(double.parse(stdin.readLineSync()!),
          double.parse(stdin.readLineSync()!));
  t1.addition(t2);
  print('hr: ${t2.hr}, min: ${t2.min}');
}
