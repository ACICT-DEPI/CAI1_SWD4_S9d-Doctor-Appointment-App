import 'package:doc_appointment/data/specialities.dart';
import 'package:doc_appointment/widget/app_bar.dart';
import 'package:doc_appointment/widget/home_screen/doctor_speciality/speciality_button.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Category'),
      body: GridView(
        padding: const EdgeInsets.only(
          right: 15,
          left: 20,
          bottom: 25,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
        ),
        children: [
          ...specialities.entries
              .map(
                (value) => SpecialityButton(value.value),
              )
              .toList(),
        ],
      ),
    );
  }
}
