

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final VoidCallback onpressed;


  const CustomAppBar({super.key,
    required this.title,
    this.actions, required this.onpressed,
    // Default color
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      actions: actions,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.grey, width: 0.5),
          ),
          child: IconButton(
            onPressed: onpressed,
            icon: Icon(Icons.arrow_back_outlined),
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);



}