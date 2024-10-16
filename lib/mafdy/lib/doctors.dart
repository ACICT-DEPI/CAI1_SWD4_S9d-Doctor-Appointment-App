import 'package:doc_appointment/data/specialities.dart';

import '../../models/doctor.dart';
//import 'package:doc_appointment/mafdy/lib/';


List<Doctor> doctors = [
  Doctor(
    "assets/images/doctor.png",
    'Alana Rueter',
    specialities['neurologist']!,// as Speciality,
    '8302 Preston Rd. inglewood, Maine 98380',
    4.5,
    49,
  ),
  Doctor(
  "assets/images/doctor3.png",
  'John Doe',
  specialities['dentist']!, // as Speciality,
  '1234 Elm St. Springfield, Illinois 62704',
  4.8,
  82,
),

Doctor(
  "assets/images/doctor2.png",
  'Samantha White',
  specialities['neurologist']!, // as Speciality,
  '5678 Oak Ave. Denver, Colorado 80203',
  4.6,
  67,
),

Doctor(
  "assets/images/doctor2.png",
  'David Brooks',
  specialities['urologist']!, // as Speciality,
  '9101 Maple Rd. Phoenix, Arizona 85001',
  4.7,
  91,
),

Doctor(
  "assets/images/doctor1.png",
  'Laura Smith',
  specialities['gynecologist']!, // as Speciality,
  '2233 Birch Dr. Miami, Florida 33101',
  4.9,
  120,
),

Doctor(
  "assets/images/doctor3.png",
  'Michael O\'Neill',
  specialities['osteologist']!, // as Speciality,
  '7890 Pine St. Austin, Texas 78701',
  4.4,
  58,
),

Doctor(
  "assets/images/doctor2.png",
  'Emily Thompson',
  specialities['plastic_surgeon']!, // as Speciality,
  '3344 Cedar Blvd. Los Angeles, California 90001',
  4.8,
  76,
),

Doctor(
  "assets/images/doctor3.png",
  'James Carter',
  specialities['intestine']!, // as Speciality,
  '4455 Redwood Rd. Chicago, Illinois 60601',
  4.7,
  65,
),

Doctor(
  "assets/images/doctor2.png",
  'Olivia Martin',
  specialities['radiologist']!, // as Speciality,
  '5566 Willow St. Seattle, Washington 98101',
  4.6,
  72,
),

Doctor(
  "assets/images/doctor1.png",
  'Robert Harris',
  specialities['herbalist']!, // as Speciality,
  '6677 Aspen Ct. Boston, Massachusetts 02101',
  4.5,
  49,
),

Doctor(
  "assets/images/doctor1.png",
  'Sophia Lee',
  specialities['pulmonologist']!, // as Speciality,
  '7788 Spruce Rd. San Francisco, California 94101',
  4.9,
  105,
),

];
