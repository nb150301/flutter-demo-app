import 'package:flutter/material.dart';
import 'package:my_app/routes.dart';
import 'package:my_app/screens/checkout_screen.dart';
import 'package:my_app/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
