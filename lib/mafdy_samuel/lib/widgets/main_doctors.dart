import 'package:flutter/material.dart';

import '../../../mafdy/lib/doctors.dart';
import '../../../widget/home_screen/search_screen/doc_card.dart'; // Ensure DocCard uses the correct Doctor class

class MainDoctors extends StatelessWidget {
  const MainDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (context, i) {
        return DocCard(doctors[i]); // doctors[i] should be of type Doctor from models
      },
    );
  }
}
