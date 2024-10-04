// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'complete.dart';
import 'data/create_account_data.dart';
import 'login.dart';
import 'widgets/login_with_another_way.dart';
import 'privacy.dart';

class createaccount extends StatefulWidget {
  // ... other class members

  @override
  Createaccount createState() => Createaccount();

  void onCheckboxChanged(bool value) {}
}

class Createaccount extends State<createaccount> {
  bool _isObscure = true;
  bool isChecked = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Text(
              "Create Account",
              style: TextStyle(fontSize: 32),
            )),
            Container(
                child: Text(
                    "Fill your information below or register\n                  with your acount")),
            data(
              labelText: "Name",
              hinttext: "Your name",
            ),
            data(labelText: "Email", hinttext: "Example@gmail.com"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Container(
                height: 60,
                child: TextField(
                  obscureText: _isObscure, // Use the getter here
                  decoration: InputDecoration(
                    labelText: "password",
                    hintText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: const Color.fromARGB(255, 9, 9, 9)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Color(0xFF2196F3),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;

                      widget.onCheckboxChanged(value);
                    });
                  },
                ),
                Text("Agree with"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Privacy();
                      },
                    ));
                  },
                  child: Text(
                    'Terms & Condition',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2196F3),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
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
                        return CompleteProfilePage();
                      },
                    ));
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Divider(
                    thickness: 5,
                    height: 20,
                    color: Color.fromARGB(255, 164, 161, 161),
                    indent: 10,
                    endIndent: 80,
                  ),
                ),
                Container(
                  child: Text("Or sign in with"),
                ),
                Container(
                  child: Divider(
                    thickness: 5,
                    height: 20,
                    color: Color.fromARGB(255, 164, 161, 161),
                    indent: 80,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            ),
            iconsBtns(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Already have an account ? "),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return LoginPage();
                        },
                      ));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: Color(0xFF267CFC),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

