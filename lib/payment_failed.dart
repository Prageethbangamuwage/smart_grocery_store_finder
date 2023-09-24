import 'package:flutter/material.dart';

class SelectOption extends StatelessWidget {
  const SelectOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
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
          title: const Text(
            'Order Completion',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 100), // Adjust the height as needed
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 3.0), // Adjust the top padding as needed
                child: Image.asset(
                  'assets/cross.png', // Replace with the correct asset path
                  width: 150, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between image and text
            const Text(
              'PAYMENT FAILED',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Set text color to red
              ),
            ),

            // Centered text
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'An error occurred while processing \n                   your payment',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set text color to black
                ),
              ),
            ),

            // White-colored button with red-colored button inside
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the white button here
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white, // Set the text color to black
                fixedSize: const Size(
                    500, 135), // Adjust the width and height as needed
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the red button here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 255, 76, 63),
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Set the border radius
                  ), // Set the text color to white
                ),
                child: const Text(
                  'Try Again', // Add your desired text here
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
