import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'OTP_Verified.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  'assets/otp.png', // Path to your image
                  width: 126, // Optional: Set the width of the image
                  height: 123,
                ),
              ),
            ),
            const SizedBox(height: 150),
            const Text(
              "Enter the OTP sent to your mobile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 4,
              borderColor: const Color.fromARGB(255, 60, 99, 209),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                // Handle validation or checks here
              },
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Didn’t receive the OTP?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Resend OTP",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 100),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              height: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the OtpVerified page when the button is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OtpVerified(),
                    ),
                  );
                },
                child: const Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
