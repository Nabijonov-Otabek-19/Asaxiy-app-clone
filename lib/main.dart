import 'package:asaxiy_clone/data/model/models.dart';
import 'package:asaxiy_clone/di/di.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'presentation/screens/screens.dart';
import 'theme/colors.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Hive.initFlutter();
  //Hive.registerAdapter(ProductModelAdapter());
  //await Hive.openBox<ProductModel>(dbName);

  diSetup(); // Set up DI
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asaxiy clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        primaryColorDark: primaryDark,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: background,
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: Builder(builder: (context) {
        return const SplashScreen();
      }),
    );
  }
}
