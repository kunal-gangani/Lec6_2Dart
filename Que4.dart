import 'Que4Class.dart';
import 'dart:io';

void main(){
  print("Supermarket Billing System");
  stdout.write("Enter your User ID : ");
  int userId = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter your User Password : ");
  String userPass = stdin.readLineSync() ?? "";
  SuperMarket entryPoint = SuperMarket();
  entryPoint.ValidateCred(userId: userId, userPass: userPass);
  stdout.write("Enter number of item details you want to add : ");
  int length = int.parse(stdin.readLineSync() ?? "0");
  List<SuperMarket> superMarket = List.generate(length, (index) {
    SuperMarket superMarket = new SuperMarket();
    stdout.write("Enter Item Number : ");
    superMarket.SetNum = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item Name : ");
    superMarket.SetName = stdin.readLineSync() ?? "";
    stdout.write("Enter Item Quantity : ");
    superMarket.SetQuan = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Item Price : ");
    superMarket.SetPrice = int.parse(stdin.readLineSync() ?? "0");
    superMarket.SetTax = 15;
    superMarket.SetDiscount = 20;
    return superMarket;
  });
  superMarket.forEach((element) {
    print("${element.GetNum}\t${element.GetName}\t${element.GetQuan}\t${element.GetPrice}");
  });
}