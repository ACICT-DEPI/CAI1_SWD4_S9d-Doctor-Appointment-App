import 'package:doc_appointment/data/upcomming_schedule.dart';
import 'package:flutter/material.dart';

class ListNumber extends StatelessWidget {
  const ListNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration:const BoxDecoration(
        color: const Color.fromARGB(255, 1, 101, 252),
        //borderRadius: BorderRadius.circular(20),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          "${upcommingSchedule.length}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
