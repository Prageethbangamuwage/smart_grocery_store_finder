import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 242, 242),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
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
          title: const Text(
            'Terms & Conditions',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              RichText(
                text: const TextSpan(
                  text:
                      'Welcome to BuyMart Smart Grocery Store Finder Mobile Application! ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  text: 'By using this app, you agree to the following:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 10), // Add numbered sentences
              const NumberedSentence(
                number: 1,
                sentence:
                    'The app purpose is to help you find nearby grocery stores within 10-15 kilometers using created lists. The accuracy of store information is not guaranteed.',
              ),
              const NumberedSentence(
                number: 2,
                sentence:
                    ' You are responsible for the confidentiality of your account login details.',
              ),
              const NumberedSentence(
                number: 3,
                sentence:
                    'Do not use the app for unlawful purposes; comply with all applicable laws.',
              ),
              const NumberedSentence(
                number: 4,
                sentence:
                    'You grant us the right to use any user-generated content you submit.',
              ),
              const NumberedSentence(
                number: 5,
                sentence:
                    'The app and its content are protected by intellectual property laws.',
              ),
              const NumberedSentence(
                number: 6,
                sentence:
                    'Review our Privacy Policy for information on data collection and usage.',
              ),
              const NumberedSentence(
                number: 7,
                sentence: 'We may update the app and these terms.',
              ),
              const NumberedSentence(
                number: 8,
                sentence:
                    'These terms are governed by Democratic Socialist Republic of Sri Lanka laws.',
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  text:
                      'For questions, contact us at \nbuymart@gmail.com.\n\nThank you for using BuyMart! ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberedSentence extends StatelessWidget {
  final int number;
  final String sentence;

  const NumberedSentence({super.key, 
    required this.number,
    required this.sentence,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: '$number. ',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: sentence,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
