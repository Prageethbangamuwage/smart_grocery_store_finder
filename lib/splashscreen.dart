import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' ;

import 'main.dart';

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
        backgroundColor: Colors.white,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/splash_logo.jpeg',
             width: 300, // Set the width
            height: 300,
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
