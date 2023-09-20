import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/select_payment.dart';
import 'package:smart_grocery_store_finder/thankyuo.dart';

class VisitnCollect extends StatefulWidget {
  const VisitnCollect({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VisitnCollectState createState() => _VisitnCollectState();
}

class _VisitnCollectState extends State<VisitnCollect> {
  int selectedRadio = 1; // Initialize the selected radio with the first option

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

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
          title: const Text(
            'Deliver Option', // Replace with your desired title text
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black, // Set text color to black
            ),
          ),
          centerTitle: true, // Center-align the title
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
                  minimumSize: const Size(500,
                      200), // Set the width and height of the button as desired
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setSelectedRadio(1);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ThankYou(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setSelectedRadio(value as int);
                            },
                          ),
                          const Text(
                            'Visit & Collect',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                         setSelectedRadio(1);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SelectPayment(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setSelectedRadio(value as int);
                            },
                          ),
                          const Text(
                            'Doorstep delivery',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
