// Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age,
// Candidate_Weight and Candidate_Height as data members. Create a method
// GetCandidateDetails() and DisplayCandidateDetails(). Create a main method to demonstrate
// the Candidate class
import 'dart:io';

class Candidate {
  int? Candidate_ID, Candidate_Age, Candidate_Weight, Candidate_Height;
  String? Candidate_Name;
  void GetCandidateDetails() {
    this.Candidate_Name = stdin.readLineSync()!;
    this.Candidate_Age = int.parse(stdin.readLineSync()!);
    this.Candidate_Height = int.parse(stdin.readLineSync()!);
    this.Candidate_ID = int.parse(stdin.readLineSync()!);
    this.Candidate_Weight = int.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails() {
    print(
        'Candidate Name: $Candidate_Name \n Candidate Age: $Candidate_Age \n Candidate Height: $Candidate_Height \n Candidate Id: $Candidate_ID \n Candidate Weight: $Candidate_Weight \n');
  }
}

void main(List<String> args) {
  Candidate cad = Candidate();
  cad.GetCandidateDetails();
  cad.DisplayCandidateDetails();
}
