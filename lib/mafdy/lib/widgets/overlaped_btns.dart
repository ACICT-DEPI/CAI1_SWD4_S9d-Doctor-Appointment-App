import 'package:flutter/material.dart';

Positioned PositionBtns({
  required double Top,
  required double Left,
  required IconData ico,
  required VoidCallback onpressFn,
}) {
  return Positioned(
    top: Top,
    left: Left,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        border: Border.all(
          color: Colors.white,
          width: 2.0, // Border width
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: Icon(
          ico,
          color: Colors.black,
        ),
        onPressed: onpressFn,
      ),
    ),
  );
}
