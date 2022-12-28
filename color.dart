// Input 3 color and find the register
//black,brown,red,orange,yellow,green,blue,violet,grey,white 0-9 respectively
import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  List<String> lst=['black','brown','red','orange','yellow','green','blue','violet','grey'];
  print(
    (lst.indexOf(stdin.readLineSync()!)*10)+
    lst.indexOf(stdin.readLineSync()!)+
    pow(10,lst.indexOf(stdin.readLineSync()!)));
}