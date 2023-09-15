// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/login_screen.dart';
import 'package:smart_grocery_store_finder/my_text_field.dart';


class OtpVerified extends StatelessWidget { 
    const OtpVerified({super.key});

     get passwordController => TextEditingController();
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child:  Image.asset(
                'otpverify.png', // Path to your image
                width: 126, // Optional: Set the width of the image
                height: 123,
              ),
                ),
              ),
              const SizedBox(height: 150),
                  const Text(
              "Enter your new password", // Your text
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
         const SizedBox(height: 20),
         MyTextField(
                controller: passwordController,
                hintText: 'New Password',
                obscureText: true,
              ),
               const SizedBox(height: 10),
                MyTextField(
                controller: passwordController,
                hintText: 'Confirm New Password',
                obscureText: true,
              ),

            const SizedBox(height: 100),
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
                    // Navigate to the OtpPage when the button is pressed
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 18.0,
                  ),

                ),
               ),
               ),
            ],
          ),
      ),
    );
  }
}