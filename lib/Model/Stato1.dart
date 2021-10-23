import 'package:flutter/material.dart';

class Stato1 with ChangeNotifier {
  String _testo = 'Buongiorno';

  String get testo => _testo;

  void daiBuonanotte() {
    print(testo);

    _testo = 'BUONA NOTTE!!!!';
    print(testo);
    notifyListeners();
  }
}
