import 'package:flutter/material.dart';

Widget iconsBtns(){
return Row(
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
          print('login with Google account');
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
);
}