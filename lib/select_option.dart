import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/select_payment.dart';
import 'package:smart_grocery_store_finder/thankyuo.dart';

class SelectOption extends StatelessWidget {
  const SelectOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          title: const Text(
            'Deliver Option', // Replace with your desired title text
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black, // Set text color to black
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 170), // Add space between AppBar and buttons
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ThankYou(); // Replace with the screen you want to navigate to.
                  }));
                  // Add functionality for 'Visit & Collect' button here
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      const Size(250, 40)), // Set button size
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Set button radius
                    ),
                  ),
                ),
                child: const Text(
                  'Visit & Collect', // Text for the button
                  style: TextStyle(
                    fontSize: 18, // Change the font size here
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add space between buttons
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SelectPayment(); // Replace with the screen you want to navigate to.
                  }));
                  // Add functionality for 'Doorstep Delivery' button here
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      const Size(250, 40)), // Set button size
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Set button radius
                    ),
                  ),
                ),
                child: const Text(
                  'Doorstep Delivery', // Text for the button
                  style: TextStyle(
                    fontSize: 18, // Change the font size here
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
