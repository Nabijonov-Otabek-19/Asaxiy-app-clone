import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Future<bool> checkScreen() async {
    if (selectedIndex != 0) {
      onItemTapped(0);
      return false;
    }
    return true;
  }
}