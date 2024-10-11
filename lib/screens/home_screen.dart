import 'package:doc_appointment/screens/tabs_screen.dart';
import 'package:doc_appointment/widget/home_screen/header/current_location.dart';
import 'package:doc_appointment/widget/home_screen/doctor_speciality/doctor_speciality.dart';

import 'package:doc_appointment/widget/home_screen/nearby_hospitals/nearby_hospitals.dart';
import 'package:doc_appointment/widget/home_screen/upcomming_schedule_part/upcomming_schedule.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: topPadding,
          right: 15,
          left: 20,
          //bottom: 25,
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              CurrentLocation(),
              SizedBox(
                height: 10,
              ),
              SearchBar(),
              SizedBox(
                height: 30,
              ),
              UpcommingSchedule(),
              SizedBox(
                height: 30,
              ),
              DoctorSpeciality(),
              SizedBox(
                height: 30,
              ),
              NearbyHospitals(),
            ],
          ),
        ),
      ),
    );
  }
}
