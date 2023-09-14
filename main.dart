import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
//import 'buttons.dart';

void main() {
  runApp(
    DevicePreview(
    builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Seller1Widget(),
    );
  }
}

class Seller1Widget extends StatefulWidget {
  const Seller1Widget({super.key}); 
  @override
  State<Seller1Widget> createState() => _Seller1WidgetState();
}
        
class _Seller1WidgetState extends State<Seller1Widget> {
  get signUserIn => null;
        
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Seller1Widget - FRAME
    return Container(
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
            child: Container()
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
            child: Container()
          ),
          const Positioned(
            top: 24,
            left: 15,
            child: Icon(
              Icons.menu,
            ),
          ),
          Positioned(
            top: 235,
            left: 36,
            child: Container(
              width: 133,
              height: 133,
              decoration: const BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color : Color.fromRGBO(150, 198, 224, 1),
              )
            )
          ),
          Positioned(
            top: 235,
            left: 240,
            child: Container(
              width: 133,
              height: 133,
              decoration: const BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color : Color.fromRGBO(150, 198, 224, 1),
              )
            )
          ),
          Positioned(
            top: 454,
            left: 36,
            child: Container(
              width: 133,
              height: 133,
              decoration: const BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color : Color.fromRGBO(150, 198, 224, 1),
              )
            )
          ),
          Positioned(
            top: 454,
            left: 240,
            child: Container(
              width: 133,
              height: 133,
              decoration: const BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              color : Color.fromRGBO(150, 198, 224, 1),
              )
            )
          ),
          const Positioned(
            top: 269,
            left: 71,
            child: Text(
              'Add items', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 25,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
              ),
            )
          ),
          const Positioned(
            top: 488,
            left: 62,
            child: Text(
              'Delete items', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 25,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
              ),
            )
          ),
          const Positioned(
            top: 495,
            left: 275,
            child: Text(
              'View items', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 25,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
              ),
            )
          ),
          const Positioned(
            top: 269,
            left: 261,
            child: Text(
              'Update items', 
              textAlign: TextAlign.center, 
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 25,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
              ),
            )
          ),
        ]
      )
    );
  }
}
        


