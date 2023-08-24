import 'package:asaxiy_clone/main_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/screens.dart';
import 'theme/colors.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        primaryColorDark: primaryDark,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          //color: primary,
          backgroundColor: background,
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => MainProvider(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final pages = [
    const HomeScreen(),
    const MenuScreen(),
    const CartScreen(),
    const OrderScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: myNavBar(),
    );
  }

  BottomNavigationBar myNavBar() {
    return BottomNavigationBar(
      elevation: 16,
      iconSize: 28,
      currentIndex: _selectedIndex,
      selectedItemColor: blue,
      unselectedItemColor: gray,
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: const Icon(Icons.home),
            icon: const Icon(Icons.home_outlined),
            label: "Home"),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            activeIcon: Image.asset("assets/images/ic_category.png",
                height: 23, color: blue),
            icon: Image.asset("assets/images/ic_menu.png",
                height: 23, color: iconGray),
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
