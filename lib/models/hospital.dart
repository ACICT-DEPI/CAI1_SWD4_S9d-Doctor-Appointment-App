import 'package:doc_appointment/models/speciality.dart';

class Hospital {
  String image;
  String name;
  List<Speciality> specialities;
  String address;
  String time;
  String rate;
  int reviewsNumber;

  Hospital(
    this.name,
    this.specialities,
    this.image,
    this.address,
    this.time,
    this.rate,
    this.reviewsNumber,
  );

  String get numOfReviews {
    if (reviewsNumber >= 1000) {
      return '${(reviewsNumber ~/ 1000)}K+';
    } else {
      return '$reviewsNumber';
    }
  }
}
