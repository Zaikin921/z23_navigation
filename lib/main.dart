import 'package:flutter/material.dart';
import 'package:navigation/screens/about_screen.dart';
import 'package:navigation/screens/main_screen.dart';
import 'package:navigation/screens/profile_screen.dart';
import 'package:navigation/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/about': (context) => const AboutScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
