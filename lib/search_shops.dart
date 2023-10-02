import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/shops.dart';

class SearchShops extends StatelessWidget {
  const SearchShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 250, 250),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -54,
              left: -31,
              child: Container(
                width: 472,
                height: 212,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(31, 154, 222, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(472, 212)),
                ),
              ),
            ),
            Positioned(
              top: -39,
              left: -7,
              child: Container(
                width: 425,
                height: 165,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(149, 197, 224, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(425, 165)),
                ),
              ),
            ),
            Positioned(
              top: -67,
              left: -7,
              child: Container(
                width: 421,
             height: 161,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(31, 154, 222, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(421, 161)),
                ),
              ),
            ),
            Positioned(
              top: -13,
              left: 3,
              child: Container(),
            ),
            // Add your other content here
            Padding(
              padding: const EdgeInsets.only(
                  top: 70.0), // Adjust the top padding as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage('assets/aaa.png'),
                      width: 350,
                      height: 350,
                    ),
                  ),
                  const SizedBox(height: 16.0), // Increased the gap to 16.0
                  SizedBox(
                    width: 200, // Set the desired width
                    height: 40, // Set the desired height
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
    return const Shops(); // Replace with the screen you want to navigate to.
  }));// Add your button's functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30.0,
                          ), // Adjust the radius as needed
                        ),
                      ),
                      child: const Text('Search Shops'),
                      
                    ),
                  ),
                ],
              ),
            ),
            // Menu Icon
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.menu, // Menu icon
                  color: Colors.black, // Set the color to black
                ),
                onPressed: () {
                  // Add functionality to open the menu here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
