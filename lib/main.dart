import 'package:e_commerce_learning_app/login/login_screen.dart';
import 'package:e_commerce_learning_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: appTheme, home: LoginScreen());
  }
}
