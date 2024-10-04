import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String caption;
  final String price;
  final double fontSize;
  final double iconSize;
  final Color leadingIconColor;
  final Color trailingIconColor;

  const InfoRow({
    required this.leadingIcon,
    required this.trailingIcon,
    required this.caption,
    required this.price,
    this.fontSize = 19.0,
    this.iconSize = 29.0,
    this.leadingIconColor = Colors.black,
    this.trailingIconColor = const Color(0xff0165fc),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        children: [
          Icon(
            leadingIcon,
            color: leadingIconColor,
            size: iconSize,
          ),
          const SizedBox(width: 15),
          Text(
            caption,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
            ),
          ),
          const SizedBox(width: 40),
          Icon(
            trailingIcon,
            color: trailingIconColor,
            size: iconSize,
          ),
          const SizedBox(width: 10),
          Text(
            price,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
