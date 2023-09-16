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
      home: const SellerSignup(),
    );
  }
}

class SellerSignup extends StatefulWidget {
  const SellerSignup({super.key,});

  @override
  State<SellerSignup> createState() => _SellerSignupState();
}

class _SellerSignupState extends State<SellerSignup> {

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
              top: 98,
              left: 160,
              child: Text(
                'SignUp', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 30,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 0.6666666666666666,
                decoration: TextDecoration.none,
              ),)
            ),
            
            const Positioned(
              top: 192,
              left: 45,
              child: SizedBox(
                width: 320,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 267,
              left: 45,
              child: SizedBox(
                width: 320,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 342,
              left: 45,
              child: SizedBox(
                width: 320,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 417,
              left: 45,
              child: SizedBox(
                width: 320,
                height: 64,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 367,
              left: 322,
              child: Container(
                width: 22,
                height: 11.61,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  image : DecorationImage(
                    image: AssetImage('assets/eye1.png'),
                    fit: BoxFit.fitWidth
                  ),
                )
              )
            ),
            Positioned(
              top: 446,
              left: 322,
              child: Container(
                width: 22,
                height: 11.61,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  image : DecorationImage(
                    image: AssetImage('assets/eye1.png'),
                    fit: BoxFit.fitWidth
                  ),
                )
              )
            ),
            const Positioned(
              top: 501,
              left: 95,
              child: Text('I accept the terms and conditions', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 12,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3888888888888888,
                decoration: TextDecoration.none,
              ),)
            ),
             
           Positioned(
              top: 545,
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
                  onPressed: () {}, 
                  child: const Text('SIGNUP', style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'outfit',
                ),
                ),
                )
                ),
              ),
              
            ),
            const Positioned(
              top: 600,
              left: 155,
              child: Text('or SignUp with', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 16,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3888888888888888,
                decoration: TextDecoration.none,
              ),)
            ),
            Positioned(
              top: 640,
              left: 179,
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image : DecorationImage(
                    image: AssetImage('assets/google.png'),
                    fit: BoxFit.fitWidth
                  ),
                )
              )
            ),
            const Positioned(
              top: 700,
              left: 118,
              child: Text('Already have an account?', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Outfit',
                fontSize: 16,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3888888888888888,
                decoration: TextDecoration.none,
              ),)
            ),
            const Positioned(
              top: 725,
              left: 182,
              child: Text('Login', textAlign: TextAlign.center, style: TextStyle(
                color: Colors.red,
                fontFamily: 'Outfit',
                fontSize: 16,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3888888888888888,
                decoration: TextDecoration.none,
              ),)
            ),
            
            
        ]
      )
    ),
      
   );
  }
}
