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
      home: const SellerProfile(),
    );
  }
}

class SellerProfile extends StatefulWidget {
  const SellerProfile({super.key,});

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
    body: Container(
      width: 411,
          height: 1000,
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
              top: 98,
              left: 160,
              child: Text(
                'Profile', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 30,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 0.6666666666666666,
                decoration: TextDecoration.none,
              ),)
            ),
            Positioned(
              top: 169,
              left: 155,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  image : DecorationImage(
                    image: AssetImage('assets/edit_profile.png'),
                    fit: BoxFit.fitWidth
                  ),
                )
              )
            ),
            
            const Positioned(
              top: 284,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Shop name',
                    //labelText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 360,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Business registration number',
                    //labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 436,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Address',
                    //labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 512,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Contact info',
                    //labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 588,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Opening hours',
                    //labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 664,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ratings/ Reviews',
                    //labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 740,
              left: 30,
              child: SizedBox(
                width: 347,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Description',
                    //labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            
            
            const Positioned(
              top: 852,
              left: 329,
              child: Text('0/1000', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 15,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3888888888888888,
                decoration: TextDecoration.none,
              ),)
            ),
             
           Positioned(
              top: 906,
              left: 36,
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
                  onPressed: () {}, 
                  child: const Text('Update', style: TextStyle(
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
