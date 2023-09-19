import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/select_option.dart';

class EditList extends StatefulWidget {
  const EditList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EditListState createState() => _EditListState();
}

class _EditListState extends State<EditList> {
  int itemQuantity1 = 1; // Variable to hold the quantity for the first item
  int itemQuantity2 = 1; // Variable to hold the quantity for the second item
  int itemQuantity3 = 1; // Variable to hold the quantity for the third item

  // Function to increment the quantity for the first item
  void incrementQuantity1() {
    setState(() {
      itemQuantity1++;
    });
  }

  // Function to decrement the quantity for the first item
  void decrementQuantity1() {
    setState(() {
      if (itemQuantity1 > 1) {
        itemQuantity1--;
      }
    });
  }

  // Function to increment the quantity for the second item
  void incrementQuantity2() {
    setState(() {
      itemQuantity2++;
    });
  }

  // Function to decrement the quantity for the second item
  void decrementQuantity2() {
    setState(() {
      if (itemQuantity2 > 1) {
        itemQuantity2--;
      }
    });
  }

  // Function to increment the quantity for the third item
  void incrementQuantity3() {
    setState(() {
      itemQuantity3++;
    });
  }

  // Function to decrement the quantity for the third item
  void decrementQuantity3() {
    setState(() {
      if (itemQuantity3 > 1) {
        itemQuantity3--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 242, 242),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Shopping Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
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
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const BlueButtonWithText(
                name: 'Maliban Real Chocolate Cream\n Biscuit 400g',
                price: 'Rs.520.00',
                backgroundColor: Color.fromARGB(
                    255, 255, 255, 255), // Change the background color
                textColor: Colors.black, // Change the font color
              ),
              Column(
                children: [
                  // First set of buttons and items
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: decrementQuantity1,
                      ),
                      Text(
                        itemQuantity1.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: incrementQuantity1,
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          // Handle delete button press for the first item
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Second set of buttons and items
                  const BlueButtonWithText(
                    name: 'Johnson’s Baby Milk Soap 75g',
                    price: 'Rs.130.00',
                    backgroundColor: Color.fromARGB(
                        255, 255, 255, 255), // Change the background color
                    textColor: Colors.black, // Change the font color
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: decrementQuantity2,
                      ),
                      Text(
                        itemQuantity2.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: incrementQuantity2,
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          // Handle delete button press for the second item
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Third set of buttons and items (new set)
                  const BlueButtonWithText(
                    name: 'Rathna Nadu Rice 5kg',
                    price: 'Rs.1070.00',
                    backgroundColor: Color.fromARGB(
                        255, 255, 255, 255), // Change the background color
                    textColor: Colors.black, // Change the font color
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: decrementQuantity3,
                      ),
                      Text(
                        itemQuantity3.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: incrementQuantity3,
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          // Handle delete button press for the third item
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total(Rs)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '1720.00', // Replace with your subtotal amount
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40), // Added spacing
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VisitnCollect(); // Replace with the screen you want to navigate to.
                  }));
                  // Handle the checkout button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20.0), // Adjust the border radius here
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0, // Adjust the vertical padding
                    horizontal: 30.0, // Adjust the horizontal padding
                  ),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20), // Added spacing
              ElevatedButton(
                onPressed: () {
                  // Handle the checkout button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20.0), // Adjust the border radius here
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0, // Adjust the vertical padding
                    horizontal: 30.0, // Adjust the horizontal padding
                  ),
                  child: Text(
                    'Clear Cart',
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlueButtonWithText extends StatelessWidget {
  final String name;
  final String price;
  final Color backgroundColor;
  final Color textColor;

  const BlueButtonWithText({
    Key? key,
    required this.name,
    required this.price,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
