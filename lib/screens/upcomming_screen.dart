import 'package:doc_appointment/data/upcomming_schedule.dart';
import 'package:doc_appointment/widget/app_bar.dart';
import 'package:doc_appointment/widget/home_screen/upcomming_schedule_part/book_card.dart';
import 'package:flutter/material.dart';

class UpcommingScreen extends StatelessWidget {
  const UpcommingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Upcomming Schedule'),
      body: Column(
        children: [
          ...upcommingSchedule.map(
            (book) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: BookCard(book, 'white'),
            ),
          ),
        ],
      ),
    );
  }
}
