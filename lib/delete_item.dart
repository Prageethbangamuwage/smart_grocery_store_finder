import 'package:flutter/material.dart';

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
      home: const DeleteItem(),
    );
  }
}

class DeleteItem extends StatefulWidget {
  const DeleteItem({super.key,});

  @override
  State<DeleteItem> createState() => _DeleteItemState();
}

class _DeleteItemState extends State<DeleteItem> {

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
            const Positioned(
              top: 98,
              left: 160,
              child: Center(
                child: Text(
                textAlign: TextAlign.center,'Delete Item',  style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 30,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 0.6666666666666666,
                decoration: TextDecoration.none,
              ),)
              )
              
            ),
            

            const Positioned(
              top: 238,
              left: 32,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(disabledBorder:InputBorder.none, 
                  
                    
                    //labelText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 255,
                left: 40,
                child: Icon(
                  Icons.search,
                  size: 24,
                ),
              ),

            const Positioned(
              top: 336,
              left: 32,
              child: SizedBox(
                width: 344,
                height: 180,
                child: TextField(
                  decoration: InputDecoration(
                    
                    //labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
             
           Positioned(
              top: 662,
              left: 33,
              child: Center(
                child:SizedBox(
                  width: 344,
                  height: 44,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0), // Adjust the radius here
                      ),
                    ),
                  ),
                  onPressed: () {
                    
                  }, 
                  child: const Text('Delete Item', style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'outfit',
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