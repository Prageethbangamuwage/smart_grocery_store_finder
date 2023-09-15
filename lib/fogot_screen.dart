import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/otp_screen.dart';

class FogotPage extends StatelessWidget {
  FogotPage({Key? key}) : super(key: key);

  // text editing controllers
  final mobilenumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Icon and Text
              const Align(
                alignment: Alignment.topCenter, // Aligns the content to the top center
                child: Column(
                  children: [
                    Icon(
                      Icons.lock,
                      size: 100,
                    ),
                    SizedBox(height: 150), // Add some spacing
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Please enter your mobile number to",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "receive a verification code",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
                 const SizedBox(height: 15),

              // Text field for mobile number input
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: mobilenumbercontroller,
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number',
                  ),
                ),
              ),
               const SizedBox(height: 25),
               Container(
                 decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
                width: double.infinity, // Make the button span the entire width
                height: 50.0, // Set the desired height of the button
                margin: const EdgeInsets.symmetric(horizontal: 20.0), // Optional margin
                child: ElevatedButton(
                               onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return const OtpPage(); // Replace with the screen you want to navigate to.
  }));
},
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                  ),

                ),
               ),
               ),

              // Add other UI elements or widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
