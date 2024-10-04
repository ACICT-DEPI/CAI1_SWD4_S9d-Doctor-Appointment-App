import 'package:doc_appointment/models/doctor.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('EEEE, d MMMM');
final formatterForTime = DateFormat('HH : mm');
final completeFormatter = DateFormat('MMM d, yyyy - hh:mm a');

class Book {
  Doctor doc;
  DateTime date;
  bool isRemind;
  String id;

  Book(
    this.doc,
    this.date,
    this.isRemind,
    this.id,
  );

  String get formattedDate {
    return formatter.format(date);
  }

  String get formattedStartTime {
    return formatterForTime.format(date);
  }

  String get formattedEndTime {
    return formatterForTime.format(
      date.add(
        const Duration(hours: 1),
      ),
    );
  }

  String get completeFormattedtime {
    return completeFormatter.format(date);
  }
}
