import 'package:doc_appointment/models/book.dart';
import 'package:doc_appointment/models/doctor.dart';
import 'package:doc_appointment/data/specialities.dart';

List<Book> upcommingSchedule = [
  Book(
      Doctor(
        "assets/man1.png",
        'Alana Rueter',
        specialities['dentist']!,
        '8302 Preston Rd. inglewood, Maine 98380',
        2.7,
        49,
      ),
      DateTime(2024, 9, 12, 14, 30),
      true,
      '#DR452SA54'),
  Book(
      Doctor(
        "assets/man1.png",
        'Alana Rueter',
        specialities['cardiologist']!,
        '8302 Preston Rd. inglewood, Maine 98380',
        4.5,
        49,
      ),
      DateTime(2024, 9, 12, 14, 30),
      true,
      '#DR452SA54'),
  Book(
      Doctor(
        "assets/man1.png",
        'Alana Rueter',
        specialities['neurologist']!,
        '8302 Preston Rd. inglewood, Maine 98380',
        3.4,
        49,
      ),
      DateTime(2024, 9, 12, 14, 30),
      true,
      '#DR452SA54'),
];
