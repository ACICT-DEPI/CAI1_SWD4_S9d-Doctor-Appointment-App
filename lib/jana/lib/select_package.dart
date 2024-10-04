import 'package:doc_appointment/jana/lib/patient_details.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/customButton.dart';
import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';
import 'package:doc_appointment/jana/lib/widgets/package_container.dart';

import 'package:flutter/material.dart';

class package extends StatefulWidget {
  const package({super.key});

  @override
  _packageState createState() => _packageState();
}

class _packageState extends State<package> {
  List<String> age = ['30 minute', '1 hour', '45 minutes'];
  String? value;
  bool isSelected = false;
  bool isSelected1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Select Package',
        onpressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "Select Duration",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomDropdownField(
                prefixIcon: const Icon(
                  Icons.timer,
                  color: Color(0xff0165fc),
                ),
                selectedValue: value,
                items: age,
                onChanged: (String? newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
                hintText: 'choose Duration',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Select Package",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ContainerPackage(
              imageAsset: 'assets/images/Image (4).png',
              title: 'Messaging',
              duration: '/30 mins',
              subtitle: 'Chat with Doctor',
              price: '\$20',
              isSelected: isSelected,
              onChanged: (bool? value) {
                setState(() {
                  isSelected = value ?? false;
                });
              },
            ),
            const SizedBox(
              height: 17,
            ),
            ContainerPackage(
              imageAsset: 'assets/images/Image (1).png',
              title: 'In Person',
              duration: '/30 mins',
              subtitle: 'In Person with Doctor',
              price: '\$100',
              isSelected: isSelected1,
              onChanged: (bool? value) {
                setState(() {
                  isSelected1 = value ?? false;
                });
              },
            ),
            const Spacer(),
            NavButton(
              title: 'Next',
              onPressed: () {
                print('Navigating to PatientDetails...');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PatientDetails(),
                  ),
                ).then((value) {
                  print('Navigation completed');
                }).catchError((error) {
                  print('Error during navigation: $error');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
