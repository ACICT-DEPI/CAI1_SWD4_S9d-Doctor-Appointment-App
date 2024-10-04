import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'createaccount.dart';
import 'login.dart';
class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/iphoneframe.png',
              width: MediaQuery.of(context).size.width*0.87,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Your ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Ultimate Doctor',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: '\nAppointment Booking App',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\n\nBook appointments effortlessly and manage your \nhealth journey',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return createaccount();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Let\'s Get Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Already have an account? '),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return LoginPage();
                        },
                      ));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


