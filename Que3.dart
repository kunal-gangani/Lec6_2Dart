import 'dart:io';
import 'Que3Class.dart';
void main(){
  stdout.write("Enter Number of Train Records : ");
  int len = int.parse(stdin.readLineSync() ?? "0");
  if(len<3){
    stdout.write("Re-Enter Number of Train Records : ");
    len = int.parse(stdin.readLineSync() ?? "0");
  }
  List<Railways> train;
  if(len >= 3){
    train = List.generate(len, (i) {
      Railways railways = new Railways();
      stdout.write("Enter Train Number : ");
      railways.setNumber = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("Enter Train Name : ");
      railways.setName = stdin.readLineSync() ?? "";
      stdout.write("Enter Train Destination : ");
      railways.setDestination = stdin.readLineSync() ?? "";
      stdout.write("Enter Train Arrival Time : ");
      railways.setArrival = int.parse(stdin.readLineSync() ?? "0.0");
      print("");
      return railways;
    });
  }
  else{
    print("Invalid number of train records. Exiting...");
    exit(0);
  }
  print("ID\tName\tDestination\tArrival");
  train.forEach((element) {
    print("${element.getNumber}\t${element.getName}\t${element.getDestination}\t\t${element.getArrival}");
  });
  stdout.write("Enter Train Details you want : ");
  int trainNum = int.parse(stdin.readLineSync() ?? "0");
  train[0].searchTrainInput(trainNum: trainNum);
}