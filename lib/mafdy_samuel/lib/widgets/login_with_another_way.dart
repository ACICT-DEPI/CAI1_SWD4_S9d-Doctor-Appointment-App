// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// Widget iconsBtns(){
  
// return Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Padding(
//       padding: EdgeInsets.all(8),
//     ),
//     CircleAvatar(
//       radius: 30,
//       child: IconButton(
//         onPressed: () {
//           print('login with apple account');
//         },
//         icon: const Icon(Icons.apple),
//       ),
//     ),
//     Padding(
//       padding: EdgeInsets.all(8),
//     ),
//     CircleAvatar(
//       radius: 30,
//       child: IconButton(
//         onPressed: () {
//           signInWithGoogle();
//         },
//         icon: const Icon(Icons.g_mobiledata),
//       ),
//     ),
//     Padding(
//       padding: EdgeInsets.all(8),
//     ),
//     CircleAvatar(
//       radius: 30,
//       child: IconButton(
//         onPressed: () {
//           print('login with Facebook account');
//         },
//         icon: const Icon(Icons.facebook),
//       ),
//     ),
//   ],
// );
// }

// Future signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   if(googleUser == null){return;}

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   await FirebaseAuth.instance.signInWithCredential(credential);
//   Navigator.of(context as BuildContext).pushReplacementNamed("homepage");
// }