

import 'package:doc_appointment/models/speciality.dart';


class Doctor {
  String image;
  String name;
  Speciality speciality;
  String address;
  double rate;
  int reviewsNumber;

  Doctor(
    this.image,
    this.name,
    this.speciality,
    this.address,
    this.rate,
    this.reviewsNumber,
  );
}
