
import 'package:doc_appointment/jana/lib/review_summary.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/customButton.dart';
import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';

import 'package:flutter/material.dart';


class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  String? selectedValue;
  String? selectedValue2;
  String? selectedValue3;
  List<String> dropdownItems = ['Self', 'Family member', 'Friend'];
  List<String> gender = ['male','female'];
  List<String> age = ['20+','30+','40+'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        title: "Patient Details",
        onpressed: (){
          Navigator.pop(context);
        }
        ,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Booking for",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomDropdownField(
                  selectedValue: selectedValue,
                  items: dropdownItems,
                  hintText: "Select an option",
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Gender",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomDropdownField(
                  selectedValue: selectedValue2,
                  items: gender,
                  hintText: "Select an option",
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue2 = newValue;
                    });
                  },
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Your Age",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomDropdownField(
                  selectedValue: selectedValue3,
                  items: age,
                  hintText: "Select an option",
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue3 = newValue;
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  "Write your Problem",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    maxLines: 12,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),  // Rounded corners
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      hintText: 'Write here...',
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 137,),
              NavButton(
                title: 'Next',
                onPressed: (){


                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Review()));
                },
              )



            ],
          ),
        ),
      ),
    );
  }
}
