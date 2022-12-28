import 'dart:html';
import 'dart:io';
//(Using named parameter, positional parameter, default parameter only)
num sI(num p,num r, [num t=1])=> p*r*t/100;

num largest(num a, [num b=0])=>a>b?a:b;
int fibo(int n){
  if(n<2) return n;
  return fibo(n-2)+fibo(n-1);
}
int isPrime({int n=3}){
  for (var i = 2; i <= n/2; i++)
    if(n%i==0) return 0;
  return 1;
}
num area(String type,num r,[num h=0]) => type.compareTo('circle')==0? 6.28*r*r:type.compareTo('triangle')==0?0.5*r*h:r*r;
Map<String,int> countNo({List<int> list=const []}){
  Map<String,int> map={"even":0,"odd":0};
  for (var i = 0; i < list.length; i++) {
    if(list[i]%2==0) map["even"]=map["even"]!+ 1;
    else map["odd"]=map["odd"]!+ 1;
  }
  return map;
}
void printNo(List<int> arr){
  int countEven=0;
  for (int i = 0; i < arr.length; i++)
    if(arr[i]%2==0) countEven++;
  print("Even: ${countEven}, Odd: ${arr.length-countEven}");
}
void printSum(List<int> arr){
  int count=0;
  for (int i = 0; i < arr.length; i++)
    if(arr[i]%3==0 || arr[i]%5==0) count++;
  print("Sum: ${count}");
}
void main(List<String> args) {
  //1 Write a dart code to calculate simple interest using a method.
  print('Enter p,r,t: ');
  print('simple interest is: ${sI(double.parse(stdin.readLineSync()!),double.parse(stdin.readLineSync()!),double.parse(stdin.readLineSync()!))}');
  //2 Write a dart code to find the maximum number from two numbers using this method.
  print('Enter 2 no: ');
  print('Largest no is ${largest(double.parse(stdin.readLineSync()!),double.parse(stdin.readLineSync()!))}');
  //3 Write a dart code to generate a Fibonacci series of N given numbers using this method.
  print('Enter no: ');
  int n=int.parse(stdin.readLineSync()!);
  for (var i = 0; i <= n; i++) print(fibo(n));
  //4 Write a dart code to accept a number and check whether the number is prime or not. Use
  // method name check (int n). The method returns 1, if the number is prime otherwise, it returns
  // 0.
  print('Enter no, Output-> 0 if not prime else 1: ');
  print(isPrime(n: int.parse(stdin.readLineSync()!)));
  //5 Write a dart code that calculates area of circle, triangle and square using method overloading.
  print('Entry Type(circle,triangle,square) and then no: ');
  String type=stdin.readLineSync()!;
  double h= type=='triangle'?double.parse(stdin.readLineSync()!):0;
  print('Area is: ${area(type,double.parse(stdin.readLineSync()!),h)}');
  //6 Write a dart code to count the number of even or odd numbers from an array of n numbers.
  print('Enter no. of numbers: ');
  int no=int.parse(stdin.readLineSync()!);
  List<int> arr=[];
  while(no-->0) arr.add(int.parse(stdin.readLineSync()!));
  printNo(arr);
  //7 Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are
  // divisible by either 3 or 5.
  print('Enter no. of numbers: ');
  no=int.parse(stdin.readLineSync()!);
  arr=[];
  while(no-->0) arr.add(int.parse(stdin.readLineSync()!));
  printSum(arr);
}