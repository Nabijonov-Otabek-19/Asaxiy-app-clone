import 'package:flutter/cupertino.dart';

import 'presentation/screens/screens.dart';

class MainProvider extends ChangeNotifier {
  int selectedIndex = 0;

  final pages = <Widget>[
    const HomeScreen(),
    const MenuScreen(),
    const CartScreen(),
    const OrderScreen(),
    const ProfileScreen(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
