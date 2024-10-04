import 'package:doc_appointment/jana/lib/widgets/imageText.dart';
import 'package:flutter/material.dart';

class StaticIcons extends StatelessWidget {
  const StaticIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ImageTextPair(
            imagePath: 'assets/images/Image (1).png',
            mainText: '7,500+',
            subText: 'Patients',
          ),
          ImageTextPair(
            imagePath: 'assets/images/Image (2).png',
            mainText: '10+',
            subText: 'Years Exp.',
          ),
          ImageTextPair(
            imagePath: 'assets/images/Image (3).png',
            mainText: '4.9+',
            subText: 'Rating',
          ),
          ImageTextPair(
            imagePath: 'assets/images/Image (4).png',
            mainText: '4956',
            subText: 'Review',
          ),
        ],
      ),
    );
  }
}
