// ignore_for_file: must_be_immutable, empty_constructor_bodies

import 'package:doc_appointment/mafdy_samuel/lib/widgets/custom_txt_field.dart';
import 'package:doc_appointment/screens/tabs_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'complete.dart';
import 'login.dart';
import 'privacy.dart';

class createaccount extends StatefulWidget {
  // ... other class members

  @override
  Createaccount createState() => Createaccount();

  void onCheckboxChanged(bool value) {}
}

class Createaccount extends State<createaccount> {
  TextEditingController myusername = TextEditingController();
  TextEditingController myPass = TextEditingController();
  TextEditingController myemail = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  Future signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  if(googleUser == null){return;}

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  await FirebaseAuth.instance.signInWithCredential(credential);
  Navigator.of(context).pushReplacementNamed('homepage');
}

  bool isChecked = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Form(
                key: formState,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Create Account",
                              style: TextStyle(fontSize: 32),
                            ),
                            Text(
                              "Fill your information below or register\n                         with your account",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "Username",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(height: 2),
                    CustomTextField(
                        hinttxt: 'Enter Your Username',
                        mycontroller: myusername,
                        validators: (val) {
                          if (val == '') {
                            return "Can't Be Empty";
                          }
                        }),
                    Container(height: 10),
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(height: 2),
                    CustomTextField(
                        hinttxt: 'Enter Your Email',
                        mycontroller: myemail,
                        validators: (val) {
                          if (val == '') {
                            return "Can't Be Empty";
                          }
                        }),
                    Container(height: 10),
                    const Text(
                      "Password",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(height: 2),
                    CustomTextField(
                        hinttxt: 'Enter Your Password',
                        mycontroller: myPass,
                        validators: (val) {
                          if (val == '') {
                            return "Can't Be Empty";
                          }else if(val!.length<6){
                            return "Can't Be less than 6 chars";
                          }
                        }),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0xFF2196F3),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;

                        widget.onCheckboxChanged(value);
                      });
                    },
                  ),
                  const Text("Agree with"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Privacy();
                        },
                      ));
                    },
                    child: const Text(
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
              Container(height: 15),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: const Color(0xFF0165FC),
                height: 40,
                onPressed: () async {
                  if (formState.currentState!.validate()) {
                   try {
  // Create user with email and password
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: myemail.text,
    password: myPass.text,
  );

  // Send email verification
  await FirebaseAuth.instance.currentUser!.sendEmailVerification();

  // Navigate to complete profile page
  Navigator.of(context).pushReplacementNamed('completeprofile');

} on FirebaseAuthException catch (e) {
  // Handle different FirebaseAuth exceptions
  if (e.code == 'weak-password') {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Weak password, must be at least 6 characters.")),
    );
  } else if (e.code == 'email-already-in-use') {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Email is already in use.")),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Auth Error: ${e.message}")),
    );
  }

} catch (e) {
  // Catch any other general error including App Check
  if (e.toString().contains("No AppCheckProvider installed")) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("App Check not set up correctly.")),
    );
  } else if (e.toString().contains("Password should be at least 6 characters")) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Password should be at least 6 characters")),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Unexpected error: ${e.toString()}")),
    );
  }
}

                  } else {
                    print('not valid');
                  }
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Divider(
                      thickness: 5,
                      height: 20,
                      color: Color.fromARGB(255, 164, 161, 161),
                      indent: 10,
                      endIndent: 80,
                    ),
                  ),
                  Container(
                    child: const Text("Or sign in with"),
                  ),
                  Container(
                    child: const Divider(
                      thickness: 5,
                      height: 20,
                      color: Color.fromARGB(255, 164, 161, 161),
                      indent: 80,
                      endIndent: 10,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        print('login with apple account');
                      },
                      icon: const Icon(Icons.apple),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        signInWithGoogle();
                      },
                      icon: const Icon(Icons.g_mobiledata),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        print('login with Facebook account');
                      },
                      icon: const Icon(Icons.facebook),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Already have an account ? "),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('login');
                      },
                      child: const Text(
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
      ),
    );
  }
}
