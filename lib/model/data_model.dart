import 'package:flutter/material.dart';

class DataModel extends ChangeNotifier {
  List<int>data = <int>[1, 2];

  void appendData(int value) {
    data.add(value);
    notifyListeners();
  }
}