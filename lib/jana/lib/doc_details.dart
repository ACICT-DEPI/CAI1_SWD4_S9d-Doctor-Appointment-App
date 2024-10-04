
import 'package:doc_appointment/jana/lib/book_doctor.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/jana/lib/widgets/doctor_profile.dart';
import 'package:doc_appointment/jana/lib/widgets/nav_button.dart';
import 'package:doc_appointment/jana/lib/widgets/static_icons.dart';
import 'package:doc_appointment/jana/lib/widgets/working_hours.dart';

import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Doctor Details',
        onpressed: (){},
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 2, top: 4, bottom: 4,left: -20),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_outlined,
                    color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 4, bottom: 4),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(color: Colors.white, child: const DoctorProfile()),
              Container(color: Colors.white, child: const StaticIcons()),
              const Padding(
                padding: EdgeInsets.only(left: 28, right: 20, top: 30),
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28, right: 20, top: 12),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed do eiusmod tempor incididunt ut labore et dolore magna"
                  " aliqua. Ut enim ad minim veniam, quis nostrud exercitation ",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: Colors.black45,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28, right: 20, top: 30),
                child: Text(
                  "Working hours",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 20, top: 0),
                child: WorkingHoursWidget(),
              ),
               NavButton(
                title: 'Book Appointment',onPressed:() {

                 Navigator.push(context, MaterialPageRoute(
                     builder: (context) => BookDoctor()));
               },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
