import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/Cart.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemDetail(),
    );
  }
}

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int itemQuantity = 1;

  void incrementQuantity() {
    setState(() {
      itemQuantity++;
    });
  }

  void decrementQuantity() {
    if (itemQuantity > 1) {
      setState(() {
        itemQuantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 242, 242),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        title: const Text(
          'Maliban Real Chocolate Cream \nBiscuit 400g',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        centerTitle: true,
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
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'images/biscutn.png',
                  height: 179,
                  width: 146,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Price',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 12, 12, 12),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0),
                              child: Text(
                                'In Stock',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 36, 146, 249),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Rs.520.00',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 0),
                              child: Text(
                                'Per Item',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Maliban Real Chocolate Cream Biscuit 400g',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10, // Decreased the gap here
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            color: const Color.fromARGB(255, 37, 158, 245),
                            onPressed: decrementQuantity,
                          ),
                          Text(
                            itemQuantity.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 37, 158, 245),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            color: const Color.fromARGB(255, 37, 158, 245),
                            onPressed: incrementQuantity,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40, // Decreased the gap here
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const EditList(); // Replace with the screen you want to navigate to.
                    })); // Add your button's functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ), // Adjust the radius as needed
                    ),
                    fixedSize:
                        const Size(250, 40), // Set the desired width and height
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 18, // Adjust the font size as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
