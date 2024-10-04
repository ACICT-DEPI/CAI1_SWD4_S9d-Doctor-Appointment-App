import 'package:flutter/material.dart';

class data extends StatelessWidget {
  data({this.hinttext, this.labelText});
  String? hinttext;
  String? labelText;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hinttext,
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: const Color.fromARGB(255, 9, 9, 9)),
            ),
          ),
        ),
      ),
    );
  }
}