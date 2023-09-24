import 'package:flutter/material.dart';


class DeleteItem extends StatelessWidget {
  const DeleteItem({Key? key}) : super(key: key);

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
              top: 24,
              left: 15,
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
                  'Delete Item',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Search Bar below Text and White Color Button
            Positioned(
              top: 210, 
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
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                    
            const SizedBox(height: 50,),
            Positioned(
              top: 450,
              left: 33,
              child: Container(
                width: 344,
                height: 170,
                decoration: const BoxDecoration(
                  borderRadius : BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                boxShadow : [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                  offset: Offset(0,4),
                  blurRadius: 25
                )],
                color : Color.fromRGBO(255, 255, 255, 1),
                )
              )
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 165.0
                  ), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  const SizedBox(height: 16.0), // Increased the gap to 16.0
                  SizedBox(
                    width: 344, 
                    height: 44, 
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30.0,
                          ), // Adjust the radius as needed
                        ),
                      ),
                      child: const Text('Delete', style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'outfit',),
                      ),
                    ),
                  ),
                ],
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
