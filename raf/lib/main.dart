import './greeting.dart';
import 'package:flutter/material.dart';

import './registerPage.dart';
import './loginPage.dart';

void main() {
  runApp(MaterialApp(
    title: "Login App",
    routes: {
      '/': (context) => LoginPage(),
      '/register': (context) => RegisterPage(),
    },
    initialRoute: '/',
  ));
}
