import 'package:flutter/material.dart';

class WorkingHoursWidget extends StatelessWidget {
  final List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

   WorkingHoursWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: days
            .map((day) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                day,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black45
                ),
              ),
              const Text(
                "00:00 - 00:00",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ))
            .toList(),
      ),
    );
  }
}