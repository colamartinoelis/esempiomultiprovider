import 'package:flutter/material.dart';

class Stato2 with ChangeNotifier {
  Color _x = Colors.deepPurpleAccent;

  Color get x => _x;

  void cambiaColore() {
    _x = Colors.black;
    notifyListeners();//IMPORTANTE!!!!!!!
  }
}
