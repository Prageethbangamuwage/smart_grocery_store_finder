import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/home_screen.dart';
import 'package:smart_grocery_store_finder/intro_screen.dart';

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

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var defaultTargetPlatform2 = defaultTargetPlatform;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/splash_logo.jpeg',
            height: 150,
          ),
          const SizedBox(
            height: 30,
          ),
          if (defaultTargetPlatform2 == TargetPlatform.iOS)
            const CupertinoActivityIndicator(
              color: Colors.black,
              radius: 20,
            )
          else
            const CircularProgressIndicator(
              color: Colors.black,
            )
        ])));
  }
}

class Home extends StatelessWidget {
  const Home({super.key}); //home

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => const IntroScreen(),
         // ignore: prefer_const_constructors
         "home" : (context) =>  HomeScreen(),
      },
    );
  }
}
