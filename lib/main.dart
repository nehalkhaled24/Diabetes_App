import 'package:diabetes/register.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RegisterScreen.routeName,
        routes: {
          RegisterScreen.routeName: (context) => RegisterScreen(),
          LoginScreen.routeName: (context) => LoginScreen(),
        });
  }
}
