// Create a class named Bank_Account with Account_No, User_Name, Email, Account_Type, and
// Account_Balance as data members. Also create a method GetAccountDetails() and
// DisplayAccountDetails(). Create a main method to demonstrate the Bank_Account class.
import 'dart:io';

class Bank_Account {
  int? account_No, account_Balance;
  String? user_Name, email, account_Type;
  void GetCandidateDetails() {
    this.user_Name = stdin.readLineSync()!;
    this.email = stdin.readLineSync()!;
    this.account_Type = stdin.readLineSync()!;
    this.account_No = int.parse(stdin.readLineSync()!);
    this.account_Balance = int.parse(stdin.readLineSync()!);
  }

  void DisplayAccountDetails() {
    print(
        'user_Name Name: ${this.user_Name!} \n email: ${this.email!} \n account_Type: ${this.account_Type!} \n account_Balance Id: ${this.account_Balance!} \n account_No: ${this.account_No!} \n');
  }
}

void main(List<String> args) {
  Bank_Account cad = Bank_Account();
  cad.GetCandidateDetails();
  cad.DisplayCandidateDetails();
}
