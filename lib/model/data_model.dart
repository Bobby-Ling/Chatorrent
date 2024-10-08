import 'package:flutter/material.dart';

class DataModel extends ChangeNotifier {
  List<String>data = <String>["aaa", "bbb"];

  void appendData(String value) {
    data.add(value);
    notifyListeners();
  }
}