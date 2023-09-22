import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double appBarHeight = 50.0; // Adjust the app bar height as needed

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(
            255, 241, 242, 242), // Set the background color of the page to blue
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0, // Remove shadow
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              // Add functionality to go back here
            },
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
                height: appBarHeight), // Adjust the app bar height as needed
            const SizedBox(height: 100), // Adjust the desired gap height
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the button here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 255, 255, 255), // Set the button background color
                  minimumSize: const Size(
                      420, 200), // Set the width and height of the button
                ),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Set text color to black
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Thank you for your order!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Make this part bold
                        ),
                      ),
                      TextSpan(
                        text:
                            '\n\nYour order is ready. Visit and collect\nyour order.',
                      ),
                    ],
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
