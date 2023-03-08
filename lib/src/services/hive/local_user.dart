import 'package:hive/hive.dart';

class AccountBox {
  static Box box = Hive.box('user_box');
  static void putUserEmail(String id) {
    box.put("userEmail", id);
  }

  static void putUserId(String id) {
    box.put("userId", id);
  }

  static String getUserEmail() => box.get("userEmail") ?? "";
  static String getUserId() => box.get("userId") ?? "";
  static void clearBox() {
    box.clear();
  }
}
