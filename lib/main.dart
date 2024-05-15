import 'package:flutter/material.dart';
import 'package:flutter_login_app/views/home_ui.dart';
import 'package:flutter_login_app/views/login_ui.dart';
import 'package:flutter_login_app/views/signup_ui.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: SignupUI(),
    initialRoute: '/home',
    routes: {
      '/home': (context) => const HomeUI(),
      '/login': (context) => const LoginUI(),
      '/signup': (context) => const SignupUI(),
    },
  ));
}
