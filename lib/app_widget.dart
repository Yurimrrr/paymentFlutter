import 'package:flutter/material.dart';
import 'package:playflow/models/barcode_scanner/barcode_scanner_page.dart';
import 'package:playflow/models/home/home_page.dart';
import 'package:playflow/models/splash/splash_page.dart';

import 'models/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage()
      },
    );
  }
}
