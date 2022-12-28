// Find diff between square of sum and sum of the squares of the first n no.
import 'dart:io';
import 'dart:math';
int sum(int n){
  if(n<1) return 0;
  return n+sum(n-1);
}
int squareOfSum(int n){
  if(n<1) return 0;
  return pow(n, 2).toInt()+squareOfSum(n-1);
}
void main(List<String> args) {
  print('Find diff between square of sum and sum of the squares of the first n no.');
  int n=int.parse(stdin.readLineSync()!);
  print(pow(sum(n), 2)-squareOfSum(n));
}