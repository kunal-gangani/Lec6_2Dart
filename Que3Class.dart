class Railways{
  late int _train_num;
  late String _train_name;
  late String _destination;
  late int _train_arrival;

  set setNumber(int number) => _train_num = number;
  set setName(String name) => _train_name = name;
  set setDestination(String destination) => _destination = destination;
  set setArrival(int arrival) => _train_arrival = arrival;

  int get getNumber => _train_num;
  String get getName => _train_name;
  String get getDestination => _destination;
  int get getArrival => _train_arrival;

  void searchTrainInput({required int trainNum}){
    if(_train_num == trainNum){
      print("${_train_num}\t${_train_name}\t${_destination}\t${_train_arrival}");
    }else{
      print("Invalid Train Input");
    }
  }
}