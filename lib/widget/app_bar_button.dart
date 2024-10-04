import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton(this.icon, {super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        //padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Color.fromARGB(101, 169, 170, 169),
          ), // width: 0.5),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
