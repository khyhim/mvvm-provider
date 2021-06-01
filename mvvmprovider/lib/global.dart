/*
|---------------------------------------------
|   global.dart
|---------------------------------------------
|   @Global store funtion that developer using
|  
*/

class Global {
  static final Global _global = new Global._internal();

  String userToken;
  int userId;

  clearAll() {
    userToken = null;
  }

  Global._internal();
}
