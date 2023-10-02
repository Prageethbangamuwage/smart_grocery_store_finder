import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/add_tocart.dart';

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
                      'assets/Location.png', // Path to your image
                      width: 80, // Optional: Set the width of the image
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              "View the Location", // Your text
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
                height: 30), // Add some space between the text and the row
            // Row with photo, text, and button
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // Photo
                    Image.asset(
                      'assets/biscut.png',
                      width: 85.81,
                      height: 65.61,
                    ),
                    const Spacer(), // Add space between photo and text
                    // Text
                    const Column(
                      children: [
                        Text(
                          'Maliban Real Chocolate\nCream Biscuit 400g',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                            height:
                                5), // Add some space between the two Text widgets
                        Text(
                          'Rs.520.00',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                          maxLines:
                              1, // You can set the number of lines as needed
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),

                    const Spacer(), // Add space between text and button
                    // Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Items(); // Replace with the screen you want to navigate to.
                        }));
                        // Add your button functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Background color
                      ),
                      child: const Text(
                        'Available',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
                height: 10), // Add some space between the text and the row
            // Row with photo, text, and button
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // Photo
                    Image.asset(
                      'assets/nadu.png',
                      width: 82.64,
                      height: 74.5,
                    ),
                    const Spacer(), // Add space between photo and text
                    // Text
                    const Column(
                      children: [
                        Text(
                          'Rathna Nadu Rice 5kg\n5kg',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                            height:
                                5), // Add some space between the two Text widgets
                        Text(
                          'Rs.1070.00',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                          maxLines:
                              1, // You can set the number of lines as needed
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),

                    const Spacer(), // Add space between text and button
                    // Button
                    ElevatedButton(
                      onPressed: () {
                        // Add your button functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Background color
                      ),
                      child: const Text(
                        'Available',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // Photo
                    Image.asset(
                      'assets/soap.png',
                      width: 85.81,
                      height: 65.61,
                    ),
                    const Spacer(), // Add space between photo and text
                    // Text
                    const Column(
                      children: [
                        Text(
                          'Johnson’s Baby\nMilk Soap 75g',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                            height:
                                5), // Add some space between the two Text widgets
                        Text(
                          'Rs.160.00',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                          maxLines:
                              1, // You can set the number of lines as needed
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),

                    const Spacer(), // Add space between text and button
                    // Button
                    ElevatedButton(
                      onPressed: () {
                        // Add your button functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Background color
                      ),
                      child: const Text(
                        'Available',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    // Photo
                    Image.asset(
                      'assets/sunlight.png',
                      width: 85.81,
                      height: 65.61,
                    ),
                    const Spacer(), // Add space between photo and text
                    // Text
                    const Column(
                      children: [
                        Text(
                          'Sunlight Washing\nPowder Lemon\n& Rose 1KG',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          maxLines: 3,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                            height:
                                5), // Add some space between the two Text widgets
                        Text(
                          'Rs.160.00',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                          maxLines:
                              1, // You can set the number of lines as needed
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),

                    const Spacer(), // Add space between text and button
                    // Button
                    ElevatedButton(
                      onPressed: () {
                        // Add your button functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Background color
                      ),
                      child: const Text(
                        'Available',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Add additional widgets or rows here if needed
          ],
        ),
      ),
    );
  }
}
