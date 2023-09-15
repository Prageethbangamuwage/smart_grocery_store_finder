import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/fogot_screen.dart';
import 'package:smart_grocery_store_finder/home_screen.dart';
import 'package:smart_grocery_store_finder/intro_screen.dart';
import 'package:smart_grocery_store_finder/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Splash Screen',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key}); //home

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const IntroScreen(),
        // ignore: prefer_const_constructors
        "home": (context) => HomeScreen(),
        "Fogot": (context) => FogotPage(),
      },
    );
  }
}