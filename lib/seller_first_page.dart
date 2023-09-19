import 'package:flutter/material.dart';




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
              top: 94,
              left: 40,
              child: Text('BUYMART Seller Center', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 30,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 0.6666666666666666
              ),)
            ),
            Positioned(
              top: 270,
              left: 83,
              child: Container(
                width: 250,
                height: 261,
                decoration: const BoxDecoration(
                  image : DecorationImage(
                    image: AssetImage('assets/sell.png'),
                    fit: BoxFit.fitWidth
                  ),
                )
              )
            ),
            const Positioned(
              top: 189,
              left: 29,
              child: Text('Thousands of BUYMART users  are waiting to \nbuy your products', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(151, 151, 151, 1),
                fontFamily: 'Outfit',
                fontSize: 18,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3888888888888888
              ),)
            ),
            
            Positioned(
              top: 599,
              left: 33,
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Text('Login', style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'outfit',
                ),
                ),
                
              
              )
              
            ),
            /*Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
                width: double.infinity, // Make the button span the entire width
                height: 50.0, // Set the desired height of the button
                margin: const EdgeInsets.symmetric(horizontal: 20.0), // Optional margin
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const OtpPage(); // Replace with the screen you want to navigate to.
                    }));
                },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                  ),

                ),
               ),
               ),*/
        ]
      )
    );
        }
        }
        


