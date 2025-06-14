import "package:flutter/material.dart";

class CustomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const waveHeight = 15.0;
    const waveWidth = 20.0;

    // Starting point at top left
    path.moveTo(0, 0);

    // Move to bottom left
    path.lineTo(0, size.height - waveHeight);

    // Build waves from bottom left to bottom right
    for (double i = 0; i < size.width; i += waveWidth) {
      double midX = i + waveWidth / 2;
      double endX = i + waveWidth;

      if (endX > size.width) endX = size.width;

      path.quadraticBezierTo(
        midX,
        size.height - waveHeight - 10,
        endX,
        size.height - waveHeight,
      );
    }

    // Move to top right
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
