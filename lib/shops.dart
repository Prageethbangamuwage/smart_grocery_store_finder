import 'package:flutter/material.dart';

class ShowDistance extends StatelessWidget {
  const ShowDistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 239, 239),
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
            // Menu Icon
            Positioned(
              top: 30,
              left: 7,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Add functionality to open the menu here
                },
              ),
            ),
            // Text in the top center
            const Positioned(
              top: 92,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'Shops',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Search Bar below Text and White Color Button
            Positioned(
              top: 180, // Adjust the top position as needed
              left: 16,
              right: 16,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Add functionality for voice recognition here
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height:
                          60), // Add spacing between the search bar and button
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add functionality for the button here
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 16), // Add space before "Keels"
                          Text(
                            'Keels',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(), // Add space between "Keels" and "7Km"
                          Text(
                            '5 km',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 16), // Add space after "7Km"
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Add spacing between buttons
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add functionality for the second button here
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 16), // Add space before text
                          Text(
                            'Food City',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(), // Add space between text and 7Km
                          Text(
                            '10 km',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 16), // Add space after 7Km
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      height:
                          20), // Add spacing between the search bar and button
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add functionality for the button here
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 16), // Add space before "Keels"
                          Text(
                            'Cargills',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(), // Add space between "Keels" and "7Km"
                          Text(
                            '7 km',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 16), // Add space after "7Km"
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
