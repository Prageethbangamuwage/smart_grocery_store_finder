import 'package:flutter/material.dart' ;

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("HomePage", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),),
      ),
    );

  }
}
