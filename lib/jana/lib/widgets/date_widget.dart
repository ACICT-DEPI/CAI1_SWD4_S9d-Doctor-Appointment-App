
import 'package:flutter/material.dart';
class DateBox extends StatefulWidget {
  final String weekDay;
  final int day;
  final String month;

  const DateBox({
    Key? key,
    required this.weekDay,
    required this.day,
    required this.month,
  }) : super(key: key);



  @override
  _DateBoxState createState() => _DateBoxState();
}

class _DateBoxState extends State<DateBox> {
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
        padding: const EdgeInsets.only(left: 15,top: 10,right: 0),
        child: SingleChildScrollView(
          child: Container(

            width: 120,
            height: 70,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xff0165fc) : Colors.white,  // Blue when selected, white when not
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.grey), // Adds a border for visibility
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.weekDay,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: isSelected ? Colors.white : Colors.black, // White when selected, black otherwise
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.day.toString(),
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(width: 4,),
                    Text(
                      widget.month,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}