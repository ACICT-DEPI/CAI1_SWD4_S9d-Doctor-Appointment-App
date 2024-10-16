import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10, right: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileImage(),
              const SizedBox(width: 10),
              _buildDoctorInfo(),
            ],
          ),
          const SizedBox(height: 30),
          const Divider(color: Color(0xffB4B4B1), thickness: 0.5),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(1.0),
      width: 150,
      height: 110,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/doctor2.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildDoctorInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Dr. Johny Wilson",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Dentist",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Color(0xffB4B4B4),
          ),
        ),
        const SizedBox(height: 15),
        _buildLocationRow(),
      ],
    );
  }

  Widget _buildLocationRow() {
    return Row(
      children: const [
        Icon(
          Icons.location_on_rounded,
          color: Color(0xff0165fc),
          size: 20,
        ),
        SizedBox(width: 5),
        Text(
          "New York, United States",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color(0xffB4B4B4),
          ),
        ),
        SizedBox(width: 5),
        Image(
          image: AssetImage('assets/images/Image (7).png'),
          width: 15,
          height: 15,
        ),
      ],
    );
  }
}
