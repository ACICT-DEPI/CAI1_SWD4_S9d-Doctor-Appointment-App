import 'package:doc_appointment/mafdy_samuel/lib/widgets/appBar.dart';
import 'package:doc_appointment/mafdy_samuel/lib/widgets/verify_code_boxes.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class VerifyCode extends StatefulWidget {
  @override
  State<VerifyCode> createState() => verify_code();
}

class verify_code extends State<VerifyCode> {
  get c3 => null;

  get c1 => null;

  get c2 => null;

  get c4 => null;

  @override
  Widget build(BuildContext Createaccount) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(title: '',onpressed: (){ Navigator.pop(context);},),
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
            ),
            Container(
                child: Text(
              "Verify Code",
              style: TextStyle(fontSize: 32),
            )),
            Container(
              child: Text("Please enter the code we just send to email"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Email');
                  },
                  child: Text(
                    "Example@gmail.com",
                    style: TextStyle(
                      color: Color(0xFF267CFC),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verifycode(
                  context: context,
                  first: true,
                  last: false,
                ),
                verifycode(
                  context: context,
                  first: false,
                  last: false,
                ),
                verifycode(
                  context: context,
                  first: false,
                  last: false,
                ),
                verifycode(
                  context: context,
                  first: false,
                  last: true,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                child: Text("Didn't receive OTP ?"),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  print('resend code');
                },
                child: Text(
                  "Resend Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF267CFC),
                  ),
                ),
              ),
            ),
              Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1300),
                  color: Color(0xFF0165FC),
                ),
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return LoginPage();
                      },
                    ));
                  },
                  child: Text(
                    "Verify ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
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
// ignore: must_be_immutable
