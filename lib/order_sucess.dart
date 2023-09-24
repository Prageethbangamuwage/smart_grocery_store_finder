import 'package:flutter/material.dart';

// ignore: camel_case_types
class keels extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const keels({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keels"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              // Add functionality for the cart icon here
            },
            icon: const Icon(
              Icons.shopping_cart, // Replace with your desired cart icon
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      'Vector.png', // Path to your image
                      width: 80, // Optional: Set the width of the image
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              "Order successfully placed!", // Your text
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
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
            
            