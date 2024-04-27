import 'dart:io';

import 'Que2Class.dart';
void main(){
  stdout.write("Enter number of Students : ");
  int length = int.parse(stdin.readLineSync()!);
  List<Student> stud = List.generate(length, (index) {
    Student student = new Student();
    stdout.write("Enter Student ID : ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Student Name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Student Age :");
    int age = int.parse(stdin.readLineSync()!);
    student.setId = id;
    student.setName = name;
    student.setAge = age;
    return student;
  });
  stud.forEach((element) {
    print("Student ID : ${element.getId}");
    print("Student Name : ${element.getName}");
    print("Student Age : ${element.getAge}");
  });
}