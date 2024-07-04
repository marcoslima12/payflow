import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/firebase_options.dart';
import 'package:payflow/modules/barcode/barcode_scanner.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: AppColors.primary, primarySwatch: Colors.orange),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/home": (context) => const Home(),
          "/login": (context) => const LoginPage(),
          "/barcode": (context) => const BarCodePage()
        });
  }
}
