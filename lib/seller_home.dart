import 'package:flutter/material.dart';
import 'package:smart_grocery_store_finder/add_item.dart';
import 'package:smart_grocery_store_finder/delete_item.dart';
import 'package:smart_grocery_store_finder/update_item.dart';

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
      home: const SellerHome(),
    );
  }
}

class SellerHome extends StatefulWidget {
  const SellerHome({super.key,});

  @override
  State<SellerHome> createState() => _SellerHomeState();
}

class _SellerHomeState extends State<SellerHome> {

  @override
  Widget build(BuildContext context) {

   return Scaffold(
    body: Container(
      width: 411,
          height: 823,
          decoration: const BoxDecoration(
            color : Color.fromRGBO(255, 255, 255, 1),
          ),

          child: Stack(
            children: <Widget>[
            Positioned(
              top: 789,
             left: 19,
             child: Container(

              )
            ),
            Positioned(
              top: -54,
              left: -31,
              child: Container(
                width: 472,
                height: 212,
                decoration: const BoxDecoration(
                  color : Color.fromRGBO(31, 154, 222, 1),
                  borderRadius : BorderRadius.all(Radius.elliptical(472, 212)),
                )
              )
            ),
            Positioned(
              top: -39,
              left: -7,
              child: Container(
                width: 425,
                height: 165,
                decoration: const BoxDecoration(
                  color : Color.fromRGBO(149, 197, 224, 1),
                  borderRadius : BorderRadius.all(Radius.elliptical(425, 165)),
                )
              )
            ),
            Positioned(
              top: -67,
              left: -7,
              child: Container(
                width: 421,
                height: 161,
                decoration: const BoxDecoration(
                  color : Color.fromRGBO(31, 154, 222, 1),
                  borderRadius : BorderRadius.all(Radius.elliptical(421, 161)),
                )
              )
            ),
            Positioned(
              top: -13,
              left: 3,
              child: Container(

              )
            ),
            const Positioned(
                top: 24,
                left: 15,
                child: Icon(
                  Icons.menu,
                  size: 24,
                ),
              ),
              
           
           Positioned(
              top: 235,
              left: 36,
              child: Center(
                child:SizedBox(
                  width: 133,
                  height: 133,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 150, 198, 224)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius here
                      ),
                    ),
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const AddItem(); // Replace with the screen you want to navigate to.
                    }));
                  }, 
                  child: const Center(
                    child: Text(textAlign: TextAlign.center,'Add \nItem', style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'outfit',
                    color: Color.fromRGBO(0, 0, 0, 1),
                ),
                ),
                )
                ),
              ),
                  )
                  ,
               
            ),
            Positioned(
              top: 235,
              left: 240,
              child: Center(
                child:SizedBox(
                  width: 133,
                  height: 133,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 150, 198, 224)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius here
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const UpdateItem(); // Replace with the screen you want to navigate to.
                    }));
                  }, 
                  child: const Center(
                    child: Text(textAlign: TextAlign.center,'Update \nItem', style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'outfit',
                    color: Color.fromRGBO(0, 0, 0, 1),
                ),
                ),
                )
                ),
              ),
                  ),
                 
            ),
            Positioned(
              top: 454,
              left: 36,
              child: Center(
                child:SizedBox(
                  width: 133,
                  height: 133,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 150, 198, 224)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius here
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const DeleteItem(); // Replace with the screen you want to navigate to.
                    }));
                  },
                  
                    child: const Text(textAlign: TextAlign.center,'Delete \nItem', style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'outfit',
                    color: Color.fromRGBO(0, 0, 0, 1),
                ),
                ),
                )
                ),
              ),
                  
             
            ),
            Positioned(
              top: 454,
              left: 240,
              child: Center(
                child:SizedBox(
                  width: 133,
                  height: 133,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 150, 198, 224)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius here
                      ),
                    ),
                  ),
                  onPressed: () {},
                  
                    child: const Text(textAlign: TextAlign.center,'View \nItem', style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'outfit',
                    color: Color.fromRGBO(0, 0, 0, 1),
                ),
                ),
                )
                ),
              ),
                  ), 
                
            

        ]
      )
    ),

   );
  }
}