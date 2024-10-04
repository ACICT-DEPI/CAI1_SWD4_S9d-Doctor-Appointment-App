import 'package:doc_appointment/data/upcomming_schedule.dart';
import 'package:doc_appointment/widget/home_screen/headers_text.dart';
import 'package:doc_appointment/widget/home_screen/see_all.dart';
import 'package:doc_appointment/widget/home_screen/upcomming_schedule_part/book_card.dart';
import 'package:doc_appointment/widget/home_screen/upcomming_schedule_part/list_number.dart';
import 'package:flutter/material.dart';

class UpcommingSchedule extends StatelessWidget {
  const UpcommingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const HeadersText(
              'Upcomming Schedule',
            ),
            const SizedBox(
              width: 10,
            ),
            const ListNumber(),
            if (upcommingSchedule.length > 1) const SeeAll('upcomming'),
          ],
        ),
        if (upcommingSchedule.isNotEmpty)
          BookCard(upcommingSchedule[0], 'blue'),
      ],
    );
  }
}
