import 'package:doc_appointment/models/speciality.dart';
import 'package:flutter/material.dart';

class SpecialityButton extends StatelessWidget {
  const SpecialityButton(this.speciality, {super.key});

  final Speciality speciality;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          iconSize: 75,
          icon: Image.asset(
            speciality.image,
          ),
        ),
        Text(
          speciality.name,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
