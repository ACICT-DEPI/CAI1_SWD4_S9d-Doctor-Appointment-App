import 'package:doc_appointment/mafdy_samuel/lib/widgets/custom_txt_field.dart';
import 'package:doc_appointment/screens/tabs_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'createaccount.dart';

class LoginPage extends StatefulWidget {
  // ... other class members

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController Pass = TextEditingController();
  TextEditingController email = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return TabsScreen();
      },
    ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    login() async {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email.text, password: Pass.text);
        if (credential.user != null && credential.user!.emailVerified) {
          // Navigate to the homepage
          Navigator.of(context).pushReplacementNamed('homepage');
        } else {
          // If for some reason credential.user is null, handle it here (though it's unlikely)
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Go to your email and verify")));
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("No user found for that email.")));
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Incorrect password.")));
        } else if (e.code == 'invalid-email') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Invalid email address.")));
        } else if (e.code == 'user-disabled') {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("User account has been disabled.")));
        } else if (e.code == 'too-many-requests') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Too many login attempts. Try again later.")));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Login failed, please try again.")));
        }
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            Form(
              key: formState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 50),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Optional: Adds spacing between the texts
                        Text(
                          "Hi! Welcome back, You've been missed",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(height: 10),
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 2),
                  CustomTextField(
                      hinttxt: 'Example@gmail.com',
                      mycontroller: email,
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
                  Container(height: 5),
                  Container(
                    alignment: Alignment.centerRight,
                  ),
                  Container(height: 2),
                  CustomTextField(
                      hinttxt: 'Enter Your Password',
                      mycontroller: Pass,
                      validators: (val) {
                        if (val == '') {
                          return "Can't Be Empty";
                        }
                      }),
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () async {
                        // if (formState.currentState!.validate()) {
                        //   try {
                        //   await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
                        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Go to your email and reset your pass.")));
                        //   } catch (e) {
                        //    print(e);
                        //   }
                        // }else{print('not valid');
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email can't be empty.")));
                        //   return;}
                        if (email.text == "") {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Email can't be empty.")));
                          return;
                        } else {
                          try {
                            await FirebaseAuth.instance
                                .sendPasswordResetEmail(email: email.text);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    "Go to your email and reset your pass.")));
                          } catch (e) {
                            print(e);
                            print("Wroooooooooooong email");
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("wrong email")));
                          }
                        }
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
                ],
              ),
            ),
            Container(height: 15),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.blue,
              height: 40,
              onPressed: () async {
                if (formState.currentState!.validate()) {
                  login();
                } else {
                  print('not valid');
                }
              },
              child: const Text(
                "Sign In",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            Container(height: 15),
            const Text(
              "OR login with",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Padding(
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
                  child: Text("Don't have an account ? "),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('signup');
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
          ])),
    );
  }
}
