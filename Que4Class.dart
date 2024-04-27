class SuperMarket{
  late int _userId;
  late String _userPass;
  
  late int _itemNum;
  late String _itemName;
  late int _itemQuan;
  late int _itemTax;
  late double _itemDiscount;
  late int _itemPrice;

  set UserId(int id) => _userId = id;
  set UserPass(String password) => _userPass = password;
  
  set SetNum(int itemNum) => _itemNum = itemNum;
  set SetName(String itemName) => _itemName = itemName;
  set SetQuan(int itemQuan) => _itemQuan = itemQuan;
  set SetTax(int ItemTax) => _itemTax = ItemTax;
  set SetDiscount(double itemDiscount) => _itemDiscount = itemDiscount;
  set SetPrice(int ItemPrice) => _itemPrice = ItemPrice;

  int get GetNum => _itemNum;
  String get GetName => _itemName;
  int get GetQuan => _itemQuan;
  int get GetTax => _itemTax;
  double get GetDiscount => _itemDiscount;
  int get GetPrice => _itemPrice;

  void ValidateCred({required int userId ,required String userPass }){
    if(_userId == userId && _userPass == userPass){
      print("User $_userId login successful");
    }else{
      print("Invalid User ID and Password");
    }
  }
}