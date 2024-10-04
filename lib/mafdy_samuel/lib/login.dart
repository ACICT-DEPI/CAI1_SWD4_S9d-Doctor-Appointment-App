import 'package:doc_appointment/mafdy_samuel/lib/password.dart';
import 'package:doc_appointment/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'createaccount.dart';
import 'data/create_account_data.dart';
import 'widgets/login_with_another_way.dart';

class LoginPage extends StatefulWidget {
  // ... other class members

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Text(
            "Sign in",
            style: TextStyle(fontSize: 32),
          )),
          Container(child: Text("Hi! Welcome back, You've been missed")),
          data(labelText: "Email", hinttext: "Example@gmail.com"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Container(
              height: 60,
              child: TextField(
                obscureText: _isObscure, // Use the getter here
                decoration: InputDecoration(
                  labelText: "password",
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
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Password();
                  },
                ));
              },
              child: const Text(
                "forget my password?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  color: Color(0xFF267CFC),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1300),
                color: const Color(0xFF0165FC),
              ),
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TabsScreen(),
                  ));
                },
                child: const Text(
                  "SIGN IN",
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
                child: Text("Don't have an account ? "),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return createaccount();
                      },
                    ));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF267CFC),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
