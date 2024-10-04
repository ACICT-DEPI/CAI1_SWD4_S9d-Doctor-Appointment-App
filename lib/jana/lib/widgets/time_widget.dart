import 'package:flutter/material.dart';

class TimeBox extends StatefulWidget {
  final String time;

  const TimeBox({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  _TimeBoxState createState() => _TimeBoxState();
}

class _TimeBoxState extends State<TimeBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 0),
        child: Container(
          width: 155,
          height: 65,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xff0165fc) : Colors.white,  // Blue when selected, white when not
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Text(
              widget.time,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
