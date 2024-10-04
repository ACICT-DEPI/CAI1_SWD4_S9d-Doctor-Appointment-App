import 'package:doc_appointment/data/profiles.dart';
import 'package:doc_appointment/widget/app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 180,
              width: 150,
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    profiles[0].image,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
