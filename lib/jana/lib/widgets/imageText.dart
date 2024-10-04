import 'package:flutter/material.dart';

class ImageTextPair extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String subText;

  const ImageTextPair({
    Key? key,
    required this.imagePath,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, width: 65, height: 70),
        const SizedBox(height: 5),
        Text(
          mainText,
          style: const TextStyle(
            color: Color(0xff0165fc),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        Text(
          subText,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Color(0xffB4B4B4),
          ),
        ),
      ],
    );
  }
}
