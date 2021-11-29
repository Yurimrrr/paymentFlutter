import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:playflow/app_widget.dart';
import 'package:playflow/models/home/home_page.dart';
import 'package:playflow/models/login/login_page.dart';
import 'package:playflow/shared/themes/app_colors.dart';
import 'package:playflow/models/splash/splash_page.dart';

void main() {
  runApp(AppFireBase());
}

class AppFireBase extends StatefulWidget {
  @override
  _AppFireBaseState createState() => _AppFireBaseState();
}

class _AppFireBaseState extends State<AppFireBase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text("Nao foi possivel inicializar o FireBase"),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
