import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Adjust the app bar height as needed

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
            'About Us', // Replace with your desired title text
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
              color: Colors.black, // Set text color to black
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' BuyMart !',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Remove bold for BuyMart
                      ),
                    ),
                    // You can add more TextSpan widgets if needed.
                  ],
                ),
              ),
              const SizedBox(
                  height: 25), // Add some spacing between titles and paragraphs
              const Text(
                'We are a revolutionary application developed by a team of talented university students as their mini project. Our goal is to simplify your grocery shopping experience and help you find the best nearby grocery stores with just a few taps on your smartphone.',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Text(
                '\nAt Smart Grocery Store Finder, we understand the challenges of finding the right grocery store that meets your needs. Whether you are looking for fresh produce, speciality items, or just want to grab your essentials quickly, our app is here to assist you every step of the way.',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              // Add more paragraphs as needed
            ],
          ),
        ),
      ),
    );
  }
}
