import 'package:asaxiy_clone/di/di.dart';
import 'package:asaxiy_clone/notification_handler.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'data/model_db/product_model_db.dart';
import 'presentation/screens/screens.dart';
import 'theme/colors.dart';
import 'firebase_options.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final token = await NotificationHandler().initializeNotifications();
  print("FCM TOKEN : $token");

  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelDBAdapter());
  await Hive.openBox<ProductModelDB>(DBNAME);

  diSetup(); // Set up DI

  // When some error occurs,
  // screen will show custom error widget, not red screen
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(
                Icons.error_outline_rounded,
                color: Colors.red,
                size: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flexible(
                  child: Text(
                    kReleaseMode
                        ? "Oops... something went wrong"
                        : errorDetails.exception.toString(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  };

  // Pass all uncaught "fatal" errors from the framework to Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: false);
    return true;
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asaxiy clone',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
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
      home: const SplashScreen(),
    );
  }
}
