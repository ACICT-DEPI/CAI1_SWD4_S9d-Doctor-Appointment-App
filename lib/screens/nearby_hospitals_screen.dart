import 'package:doc_appointment/data/hospitals.dart';
import 'package:doc_appointment/data/specialities.dart';
import 'package:doc_appointment/widget/app_bar.dart';
import 'package:doc_appointment/widget/filters.dart';
import 'package:doc_appointment/widget/home_screen/nearby_hospitals/hospital_card.dart';
import 'package:flutter/material.dart';

class NearbyHospitalsScreen extends StatelessWidget {
  const NearbyHospitalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Nearby Hospitals'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Filters(),
              ...hospitals.map(
                (hospital) => HospitalCard(hospital, false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
