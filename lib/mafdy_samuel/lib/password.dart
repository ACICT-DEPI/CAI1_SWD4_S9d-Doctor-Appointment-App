import 'package:doc_appointment/mafdy_samuel/lib/verify_code.dart';
import 'package:doc_appointment/mafdy_samuel/lib/widgets/appBar.dart';
import 'package:flutter/material.dart';

import 'login.dart';


class Password extends StatefulWidget {
  // ... other class members
  @override
  password createState() => password();
}

class password extends State<Password> {
    bool _isObscure = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(title: "",onpressed: (){ Navigator.pop(context);},),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "New Password",
                style: TextStyle(fontSize: 32),
              ),
            ),
              Container(child: Text("Your new password must be different\n from previously used password ")),
                Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
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
                          const BorderSide(color: Color.fromARGB(255, 9, 9, 9)),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Container(
                height: 60,
                child: TextField(
                  obscureText: _isObscure, // Use the getter here
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
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
                        return VerifyCode();
                      },
                    ));
                  },
                  child: Text(
                    "Create New Password",
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