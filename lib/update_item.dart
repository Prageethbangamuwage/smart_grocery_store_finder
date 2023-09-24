import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/update_item_done.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UpdateItem(),
    );
  }
}

class UpdateItem extends StatefulWidget {
  const UpdateItem({
    super.key,
  });

  @override
  State<UpdateItem> createState() => _UpdateItemState();
}

class _UpdateItemState extends State<UpdateItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 411,
          height: 823,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(top: 789, left: 19, child: Container()),
            Positioned(
                top: -54,
                left: -31,
                child: Container(
                    width: 472,
                    height: 212,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(31, 154, 222, 1),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(472, 212)),
                    ))),
            Positioned(
                top: -39,
                left: -7,
                child: Container(
                    width: 425,
                    height: 165,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(149, 197, 224, 1),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(425, 165)),
                    ))),
            Positioned(
                top: -67,
                left: -7,
                child: Container(
                    width: 421,
                    height: 161,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(31, 154, 222, 1),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(421, 161)),
                    ))),
            Positioned(top: -13, left: 3, child: Container()),
            const Positioned(
              top: 24,
              left: 15,
              child: Icon(
                Icons.menu,
                size: 24,
              ),
            ),
            const Positioned(
                top: 98,
                left: 125,
                child: Text(
                  'Update Item',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Outfit',
                    fontSize: 30,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 0.6666666666666666,
                    decoration: TextDecoration.none,
                  ),
                )),
            const Positioned(
              top: 175,
              left: 32,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Item name',
                    //labelText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 251,
              left: 32,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Item code',
                    //labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 327,
              left: 32,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Price',
                    //labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 403,
              left: 32,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Expiration date',
                    //labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 479,
              left: 32,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Quantity',
                    //labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 579,
                left: 51,
                child: Text(
                  'Availabe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Outfit',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.3888888888888888,
                    decoration: TextDecoration.none,
                  ),
                )),
            const Positioned(
              top: 579,
              left: 143,
              child: Icon(
                Icons.radio_button_checked,
                size: 24,
              ),
            ),
            const Positioned(
                top: 579,
                left: 222,
                child: Text(
                  'Not availabe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Outfit',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.3888888888888888,
                    decoration: TextDecoration.none,
                  ),
                )),
            const Positioned(
              top: 579,
              left: 347,
              child: Icon(
                Icons.radio_button_unchecked,
                size: 24,
              ),
            ),
            Positioned(
              top: 662,
              left: 33,
              child: Center(
                child: SizedBox(
                    width: 344,
                    height: 44,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                50.0), // Adjust the radius here
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const UpdateItemDone(); // Replace with the screen you want to navigate to.
                        }));
                      },
                      child: const Text(
                        'Update Item',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'outfit',
                        ),
                      ),
                    )),
              ),
            ),
          ])),
    );
  }
}
