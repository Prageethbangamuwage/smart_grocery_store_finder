import 'package:flutter/material.dart';

class OrderSuccessful extends StatelessWidget {
  const OrderSuccessful({Key? key}) : super(key: key);

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
            const SizedBox(height: 40), // Adjust the height as needed
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 3.0), // Adjust the top padding as needed
                child: Image.asset(
                  'assets/check.png', // Replace with the correct asset path
                  width: 120, // Adjust the width as needed
                  height: 120, // Adjust the height as needed
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between image and text
            const Text(
              'Order successfully placed!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Set text color to blue
              ),
            ),

            // Centered text

            // White-colored text bar with rich text
            const SizedBox(height: 30),
            Container(
              width: 500, // Adjust the width as needed
              height: 60, // Adjust the height as needed
              color: Colors.white, // Set the background color to white
              alignment: Alignment.center,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Set text color to black
                  ),
                  children: [
                    TextSpan(
                      text: 'Your order number is ',
                    ),
                    TextSpan(
                      text: ' #1123456',
                      style: TextStyle(
                        color: Colors.red, // Set text color to red
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  Amount paid\n  Payment Method\n  Payment Time',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      // Adjust the font size as needed
                      color: Colors.black,
                    ),
                    maxLines: 3, // Set the maximum number of lines to three
                    overflow: TextOverflow
                        .ellipsis, // Handle overflow with ellipsis (...) if necessary
                  ),

                  Spacer(), // Add space between text and values
                  Text(
                    '1170.00\nVisa card\n7/25/2023  05:33:20 PM',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      // Adjust the font size as needed
                      color: Colors.black,
                    ),
                    maxLines: 3, // Set the maximum number of lines to three
                    overflow: TextOverflow
                        .ellipsis, // Handle overflow with ellipsis (...) if necessary
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Container(
              width: 500, // Adjust the width as needed
              height: 110, // Adjust the height as needed
              color: Colors.white, // Set the background color to white
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the button here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(40), // Button border radius
                  ),
                  minimumSize: const Size(150, 40), // Button size
                ),
                child: const Text(
                  'Close',
                  style: TextStyle(fontSize: 18), // Button text style
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
