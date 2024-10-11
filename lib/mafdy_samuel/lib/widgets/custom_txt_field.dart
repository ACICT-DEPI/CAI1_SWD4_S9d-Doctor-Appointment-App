import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hinttxt;
  TextEditingController mycontroller;
  final String? Function(String?)? validators;
  CustomTextField({super.key, required this.hinttxt, required this.mycontroller,required this.validators});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validators,
      controller: mycontroller,
      decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  hintText: hinttxt,
                  hintStyle: TextStyle(color: Color.fromARGB(255, 168, 168, 168),),
                  filled: true,
                  fillColor: Color.fromARGB(255, 241, 241, 241),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color.fromARGB(255, 241, 241, 241),)
                  ),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Color.fromARGB(255, 241, 241, 241),)
                  ))
                  );
  }
}