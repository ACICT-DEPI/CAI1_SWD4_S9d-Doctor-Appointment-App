import 'package:flutter/material.dart';

class MapsScreen extends StatelessWidget {

  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/maps.jpg'),
              fit: BoxFit.cover, // Cover the entire area
            ),
          ),
        ),
        // Overlay with semi-transparent effect
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(0.6), // Dark overlay
        ),
        // "Coming Soon" text centered on the screen
        Center(
          child: Text(
            'Coming Soon',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
