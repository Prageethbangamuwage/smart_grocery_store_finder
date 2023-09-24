import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/add_payment.dart';
import 'package:smart_grocery_store_finder/cashondelivery.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Your Payment Method"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),// Add spacing between the search bar and button
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),

              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AddPayment(); // Replace with the screen you want to navigate to.
                    }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 16), // Add space before image
                    Image.asset(
                      'assets/creditcard.png', // Replace with the path to your image asset
                      width: 32, // Adjust the width as needed
                      height: 32, // Adjust the height as needed
                    ),
                    const SizedBox(width: 8), // Add space between image and "5 km"
                    const Text(
                      'Credit/Debit card',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/creditcard2.png', // Replace with the path to your image asset
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                    ),

                    const SizedBox(width: 20), // Add space after "5 km"
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between buttons
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                 Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CashOnDelivery(); // Replace with the screen you want to navigate to.
                    })); // Add functionality for the second button here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 16),
                    Image.asset(
                      'assets/cash.png', // Replace with the path to your image asset
                      width: 32, // Adjust the width as needed
                      height: 32, // Adjust the height as needed
                    ),
                    const SizedBox(width: 8), // Add space between image and "10 km"
                    const Text(
                      'Cash on delivery',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 235), // Add space after "10 km"
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
