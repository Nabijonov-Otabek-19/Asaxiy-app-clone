import 'package:asaxiy_clone/main_provider.dart';
import 'package:asaxiy_clone/theme/themes.dart';
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
    return Scaffold(
      body: IndexedStack(
        index: context.watch<MainProvider>().selectedIndex,
        children: context.watch<MainProvider>().pages,
      ),
      bottomNavigationBar: myNavBar(),
    );
  }

  BottomNavigationBar myNavBar() {
    return BottomNavigationBar(
      elevation: 16,
      iconSize: 24,
      currentIndex: context.watch<MainProvider>().selectedIndex,
      selectedItemColor: blue,
      unselectedItemColor: gray,
      onTap: context.read<MainProvider>().onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.home),
            icon: const Icon(Icons.home_outlined),
            label: "Home"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: Image.asset("assets/images/ic_category.png",
                height: 21, color: blue),
            icon: Image.asset("assets/images/ic_menu.png",
                height: 21, color: iconGray),
            label: "Menu"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.shopping_cart),
            icon: const Icon(Icons.shopping_cart_outlined),
            label: "Cart"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.shopping_bag),
            icon: const Icon(Icons.shopping_bag_outlined),
            label: "Orders"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.person),
            icon: const Icon(Icons.person_outlined),
            label: "Profile")
      ],
    );
  }
}
