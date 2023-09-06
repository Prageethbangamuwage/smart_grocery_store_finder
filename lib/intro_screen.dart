import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget{
  const IntroScreen({super.key});
  
  String? get name => null;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages:[
          PageViewModel(
            titleWidget: const Text(
              "Create Your Shopping List", 
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
             ),
            ),
            body: "Select your desired items and list creation in a smart way",
            image:Image.asset(
              "assets/onbording1.png",
              height: 400
              , width: 400,
           ),  
          ),
          PageViewModel(
            titleWidget: const Text(
              "Find Your Nearest Shop", 
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
             ),
            ),
            body: "Discover nearby shops within 10 - 15 km from you",
            image:Image.asset(
              "assets/onbording2.png",
              height: 500
              , width: 500,
           ),  
          ),
          PageViewModel(
            titleWidget: const Text(
              "Buy Goods in Your Own Way", 
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
             ),
            ),
            body: "Order Items with COD payment or pay by safer and faster payment gateway",
            image:Image.asset(
              "assets/onbording3.png",
              height: 400
              , width: 400,
           ),  
          ),
        ],
        onDone: (){
          Navigator.pushNamed(context, "home");
        },
        onSkip: (){
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: const Text(
          "Skip", 
          style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.blue,
        ) ,
      ),
      next: const Icon(
        Icons.arrow_forward,
        color:  Colors.blue,
        ),
      done: const Text( 
        "Done", 
         style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.blue,
          ),
    ),
    dotsDecorator: DotsDecorator(
      size: const Size.square(10.0),
      activeSize: const Size(20.0, 10.0),
      color: Colors.black26,
      activeColor: Colors.blue,
      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
   ),
   );
  }
}