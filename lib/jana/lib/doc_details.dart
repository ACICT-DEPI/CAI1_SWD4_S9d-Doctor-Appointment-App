import 'package:flutter/material.dart';
import 'book_doctor.dart'; // Import your booking screen.
import 'widgets/appBar.dart'; // Custom AppBar.
import 'widgets/doctor_profile.dart'; // Doctor profile section.
import 'widgets/static_icons.dart'; // Icons showing doctor's info.
import 'widgets/nav_button.dart'; // Button for booking.
import 'widgets/working_hours.dart'; // Widget showing working hours.

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Doctor Details',
        onpressed: () {
          Navigator.pop(context); // Go back to previous screen.
        },
        actions: [
          _buildIconButton(Icons.favorite_outline_outlined, () {}),
          const SizedBox(width: 10),
          _buildIconButton(Icons.share, () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoctorProfile(), // Displays doctor information.
              const StaticIcons(), // Icons for additional info.
              const SizedBox(height: 30),
              _buildSectionTitle('About'),
              _buildDescriptionText(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
              ),
              const SizedBox(height: 30),
              _buildSectionTitle('Working Hours'),
              WorkingHoursWidget(), // Shows available working hours.
              const SizedBox(height: 20),
              NavButton(
                title: 'Book Appointment',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDoctor(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable section title widget.
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Reusable description text widget.
  Widget _buildDescriptionText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.black45,
        ),
      ),
    );
  }

  // Reusable IconButton with consistent styling.
  Widget _buildIconButton(IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 4, bottom: 4),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 0.5),
        ),
        child: IconButton(
          icon: Icon(icon, color: Colors.black),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
