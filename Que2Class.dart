class Student{
  late int _id;
  late String _name;
  late int _age;

  set setId(int id){
    _id = id;
  }
  set setName(String name){
    _name = name;
  }
  set setAge(int age){
    _age = age;
  }

  int get getId => _id;
  String get getName => _name;
  int get getAge => _age;
}