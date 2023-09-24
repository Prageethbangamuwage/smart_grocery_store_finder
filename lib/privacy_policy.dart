import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
            'Privacy Policy',
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
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  text:
                      'Privacy Policy for BuyMart Smart Grocery Store Finder Mobile Application ',
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
                  text: 'Effective Date: [Date]',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 10), // Add seven sentences with numbers
              const NumberedSentence(
                number: 1,
                title: 'Information We Collect:',
                sentence:
                    'We may collect your name, email, location, and app usage data.',
              ),
              const NumberedSentence(
                number: 2,
                title: 'How We Use Your Information:',
                sentence:
                    ' We use it to provide store results, personalize the app, and analyze usage.',
              ),
              const NumberedSentence(
                number: 3,
                title: 'Data Sharing:',
                sentence:
                    'We share data with trusted service providers and when required by law.',
              ),
              const NumberedSentence(
                number: 4,
                title: 'Data Security:',
                sentence: 'We implement measures to protect your information.',
              ),
              const NumberedSentence(
                number: 5,
                title: 'Your Choices:',
                sentence:
                    'You can update your account with accurate information.',
              ),
              const NumberedSentence(
                number: 6,
                title: 'Changes: ',
                sentence: 'Updates will be posted in the app.',
              ),
              const NumberedSentence(
                number: 7,
                title: 'Contact Us: ',
                sentence: 'For questions, contact buymart@gmail.com.',
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  text:
                      'By using BuyMart, you agree to this policy. Thank you for trusting us with your data! ',
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
  final String title;
  final String sentence;

  const NumberedSentence({
    super.key,
    required this.number,
    required this.title,
    required this.sentence,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '$number.',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Text(
          sentence,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
