import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/customButton.dart';
import 'package:flutter/material.dart';

class YourProfile extends StatefulWidget {
  @override
  State<YourProfile> createState() => Your_profile();
}

class Your_profile extends State<YourProfile> {
  final TextEditingController _controller = TextEditingController();
  String? selectedValue;
  List<String> gender = ['male', 'female', "other"];
  @override
  Widget build(BuildContext YourProfile) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          title: "Your Profile",
          onpressed: () {
            Navigator.pop(context);
          },
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFFEF7FF)),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2.0,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(""),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      data(labelText: "Name", hinttext: "Your name"),
                      data(
                        labelText: "Phone number",
                        hinttext: "Your phone",
                      ),
                      data(labelText: "Email", hinttext: "Example@gmail.com"),
                      data(
                        hinttext: "DD/MM/YY",
                        labelText: "DOB",
                      ),
                      Container(
                        height: 120,
                        child: CustomDropdownField(
                            selectedValue: selectedValue,
                            items: gender,
                            onChanged: (onChanged) {}),
                      ),
                    ],
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
                      onPressed: () {},
                      child: const Text(
                        "Update Profile",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
