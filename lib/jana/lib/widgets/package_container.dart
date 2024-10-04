import 'package:flutter/material.dart';

class ContainerPackage extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final String price;
  final String duration;
  final bool isSelected;
  final ValueChanged<bool?>? onChanged;

  ContainerPackage({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.duration,
    required this.isSelected,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffcbcbd6)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Image.asset(
                imageAsset,
                scale: 1.5,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    price,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 20),
                  child: Text(
                    duration,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Radio<bool>(
                value: true,
                groupValue: isSelected,
                onChanged: onChanged,
                activeColor: Color(0xff0165fc),  // Sets the radio button to blue when selected
              ),
            ),
          ],
        ),
      ),
    );
  }
}
