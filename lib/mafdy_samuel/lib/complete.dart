// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:doc_appointment/mafdy_samuel/lib/login.dart';
import 'package:doc_appointment/mafdy_samuel/lib/widgets/appBar.dart';
import 'package:doc_appointment/mafdy_samuel/lib/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data/complete_data.dart';
import 'data/create_account_data.dart';

class CompleteProfilePage extends StatefulWidget {
  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext Createaccount) {
    return Scaffold(
        appBar: CustomAppBar(
          title: '',
          onpressed: () {
            Navigator.pop(context);
          },
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "Complete Your Profile",
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "Don't Worry,only you can see your personal\n     data.No one else will be able to see it ",
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 40.0)),
                      Stack(
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
                              image: const DecorationImage(
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
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 40.0)),
                data(labelText: "Name", hinttext: "Your name"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 9, 9, 9)),
                      ),
                      hintText: 'Enter Phone Number',
                      labelText: "Phone Number",
                      // ignore: unnecessary_null_comparison
                      prefixIcon: countryCodes != null
                          ? DropdownButton<String>(
                              value: selectedCountryCode,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedCountryCode = newValue!;
                                });
                              },
                              items: countryCodes.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )
                          : null,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                CustomDropdownField(
                    selectedValue: selectedValue,
                    items: gender,
                    onChanged: (onChanged) {}),
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
                        print('account completed');
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (BuildContext context) {
                        //     return Password();
                        //   },
                        // ));
                      },
                      child: const Text(
                        "Complete Profile",
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
    );
  }
}
