import 'package:flutter/material.dart';

class Value extends ChangeNotifier {
  int _num = 0;
  int get num => _num;

  void add() {
    _num++;
    notifyListeners();
  }

  void remove() {
    _num--;
    notifyListeners();
  }
}
