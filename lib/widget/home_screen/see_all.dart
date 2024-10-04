import 'package:doc_appointment/screens/category_screen.dart';
import 'package:doc_appointment/screens/nearby_hospitals_screen.dart';
import 'package:doc_appointment/screens/upcomming_screen.dart';

import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll(this.newScreen, {super.key});

  final String newScreen;

  @override
  Widget build(BuildContext context) {
    void onNewScreen() {
      if (newScreen == 'upcomming') {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const UpcommingScreen(),
          ),
        );
      } else if (newScreen == 'category') {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(),
          ),
        );
      } else if (newScreen == 'nearby') {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NearbyHospitalsScreen(),
          ),
        );
      }
    }

    return Expanded(
      child: Row(
        children: [
          const Spacer(),
          TextButton(
            onPressed: onNewScreen,
            child: const Text(
              'See All',
              style: TextStyle(
                color: Color.fromARGB(255, 1, 101, 252),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
