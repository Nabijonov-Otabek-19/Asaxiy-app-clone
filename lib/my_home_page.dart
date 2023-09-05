import 'package:asaxiy_clone/main_provider.dart';
import 'package:asaxiy_clone/theme/themes.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: context.read<MainProvider>().checkScreen,
      child: Scaffold(
        body: IndexedStack(
          index: context.watch<MainProvider>().selectedIndex,
          children: pages,
        ),
        bottomNavigationBar: myNavBar(),
      ),
    );
  }

  BottomNavigationBar myNavBar() {
    return BottomNavigationBar(
      elevation: 16,
      iconSize: 24,
      currentIndex: context.watch<MainProvider>().selectedIndex,
      selectedItemColor: blue,
      unselectedItemColor: gray,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: context.read<MainProvider>().onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.home),
            icon: const Icon(Icons.home_outlined),
            label: "Bosh sahifa"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.menu_open_sharp),
            icon: const Icon(Icons.menu_open_sharp),
            label: "Bo'limlar"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.shopping_cart),
            icon: const Icon(Icons.shopping_cart_outlined),
            label: "Savatcha"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.shopping_bag),
            icon: const Icon(Icons.shopping_bag_outlined),
            label: "Buyurtmalar"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.person),
            icon: const Icon(Icons.person_outlined),
            label: "Profil")
      ],
    );
  }
}
