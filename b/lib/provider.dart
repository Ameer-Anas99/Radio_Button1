import 'package:flutter/material.dart';

class ChangeColorProvidfer extends ChangeNotifier {
  Color selectedcolor = Colors.green;

  void ChangeColor(Color color) {
    selectedcolor = color;
    notifyListeners();
  }
}
