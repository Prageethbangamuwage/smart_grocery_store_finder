import 'package:flutter/material.dart';

class CashOnDelivery extends StatelessWidget {
  const CashOnDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cash On Delivery"),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 16.0), // Adjust the height as needed
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        height: 150, // Adjust the total height as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 1.0,
                            ),
                            const BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child:Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/cash.png', // Replace with the path to your image asset
                              width: 100, // Adjust the width as needed
                              height: 100, // Adjust the height as needed
                            ),
                            const Spacer(), // Add space between image and text
                            const Expanded(
                              child:Center(
                              child: Text(
                                'You can pay in cash to our courier\nwhen you receive the goods at your\ndoorstep.',
                                style: TextStyle(
                                  fontSize: 18.0, // Adjust the font size as needed
                                  color: Colors.black,
                                ),
                                maxLines: 3, // Set the maximum number of lines to three
                                overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis (...) if necessary
                              ),
                              ),
                            ),
                          ],
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150, // Adjust the total height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 1.0,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child:const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Subtotal (Rs.)\nDelivery Charges (Rs.)\nTotal Amount (Rs.)',
                        style: TextStyle(
                          fontSize: 15.0, // Adjust the font size as needed
                          color: Colors.black,
                        ),
                        maxLines: 3, // Set the maximum number of lines to three
                        overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis (...) if necessary
                      ),
                      Spacer(), // Add space between text and values
                      Text(
                        '840.00\n350.00\n1170.00',
                        style: TextStyle(
                          fontSize: 15.0, // Adjust the font size as needed
                          color: Colors.black,
                        ),
                        maxLines: 3, // Set the maximum number of lines to three
                        overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis (...) if necessary
                      ),
                    ],
                  ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
  left: 0.0, // Adjust the left position as needed
  right: 0.0, // Adjust the right position as needed
  bottom: 0.0, // Adjust the bottom position as needed
  child: ElevatedButton(
    onPressed: () {
      // Handle button click
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.blue, padding: const EdgeInsets.all(16.0), // Text color
    ),
    child: const Text('Confirm Order'),
  ),
),

        ],
      ),
    );
  }
}
