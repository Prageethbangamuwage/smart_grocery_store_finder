import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/login_screen.dart';
import 'button.dart';

class HomeScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomeScreen({Key? key});
  
  get buttonPrimary => null; // Corrected the constructor syntax

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor:Colors.blue,
          elevation: 0,
        ),
         body:Padding(
           padding: const EdgeInsets.all(65.0),
           child: Center(
             child:
               Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/user.png', // Image path for the second image
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {},
                    child: const Text('Seller'),
                  ),
                  const SizedBox(height: 65), // Add spacing between the second and third image
                  Image.asset(
                    'assets/user.png', // Image path for the third image
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    style: buttonPrimary,
                   onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return LoginPage(); // Replace with the screen you want to navigate to.
  }));
},

                    child: const Text('User'),
                  ),
                ],
                 ),
           ),
         ),
      ),
    );
  }
}
