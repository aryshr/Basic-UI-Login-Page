
import 'package:first_app_ui/login_screen.dart';
import 'package:first_app_ui/login_with_email.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login_screen',
    routes: {
      'login_screen': (context)=>Login(),
      'login_with_email': (context)=>SignIn(),
    },
  ));
}
