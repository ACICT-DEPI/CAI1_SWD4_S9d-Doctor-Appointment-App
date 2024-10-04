import 'package:doc_appointment/data/specialities.dart';
import 'package:doc_appointment/models/speciality.dart';
import 'package:doc_appointment/widget/home_screen/doctor_speciality/speciality_button.dart';
import 'package:doc_appointment/widget/home_screen/headers_text.dart';
import 'package:doc_appointment/widget/home_screen/see_all.dart';
import 'package:flutter/material.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            HeadersText('Doctor Speciality'),
            Spacer(),
            SeeAll('category'),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...specialities.entries
                  .map((value) => SpecialityButton(value.value))
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
