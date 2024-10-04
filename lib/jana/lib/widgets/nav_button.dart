import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String title;
  final String? optional;
  final VoidCallback onPressed;

  const NavButton({
    Key? key,
    required this.title,
    this.optional,
    required this.onPressed

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFCECED8)),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        color: Colors.white,
      ),
      height: optional != null ? 145 : 115,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Container(
              height: 65,
              width: 370,
              decoration: BoxDecoration(
                color: const Color(0xff0165fc),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14,),

            if (optional != null)
              TextButton(
                onPressed: onPressed,
                child: Text(
                  optional!,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0165fc),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
