import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../di/di.dart';
import '../../../main_provider.dart';
import '../../../my_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (context) => di.get<MainProvider>(),
                child: const MyHomePage(),
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/icons/app_logo.png",
          width: 180,
          height: 180,
        ),
      ),
    );
  }
}
