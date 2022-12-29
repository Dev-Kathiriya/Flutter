import 'dart:io';
List<int> createList(){
  List<int> numb=[];
  print('Enter no of elements: ');
  int n=int.parse(stdin.readLineSync()!);
  while (n-->0) numb.add(int.parse(stdin.readLineSync()!));
  return numb;
}
void main(List<String> args) {
  //1 Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays
  // them in increasing order.
  List<int> numb=[];
  print('Enter 5 no: ');
  while (numb.length<5) numb.add(int.parse(stdin.readLineSync()!));
  numb.sort((a, b) => a>b?1:-1);
  print(numb);
  //2 Write a dart code to read 2 lists and return a list that contains only the elements that are
  // common between them.
  List<int> list=createList();
  numb=createList();
  for (var element in numb)
    if(list.contains(element)) print("$element, ");
  //3 Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
  // “Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.
  List<String> str=['Delhi', 'Mumbai', 'Bangalore','Hyderabad','Ahmedabad'];
  print(str);
  str[str.indexOf('Ahmedabad')]='Surat';
  print(str);
  print('Write a dart code to create and read a phonebook dictionary.');
  List<Map<String,int>> lst=[];
  print('Enter Name and Number');
  while (true) {
    lst.add({stdin.readLineSync()!: int.parse(stdin.readLineSync()!)});
    print('Enter -1 to exit and 1 to continue');
    if(stdin.readLineSync()=='-1') break;
  }
  print(lst);
  //4 Write a dart code to find friends’ details by their name using a dictionary. (Create a local
  // dictionary and search from it using Map<String, Object? > & Model Class).
  lst=[];
  print('Enter Name and Number');
  while (true) {
    lst.add({stdin.readLineSync()!: int.parse(stdin.readLineSync()!)});
    print('Enter -1 to exit and 1 to continue');
    if(stdin.readLineSync()=='-1') break;
  }
  print(lst);
  //5 Write a dart code to get the current date from the system and format into different date
  // formats. Ex. dd/MM/yyyy, dd-MM-yyyy, dd-MMM-yyyy, dd-MM-yy, dd MMM yyyy, etc.

  //6 Write a dart code to create common date format method in Util Class and access in different
  // classes (with and without inheritance)
}
