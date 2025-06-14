import "package:flutter/material.dart";

class CustomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const waveHeight = 15.0;
    const waveWidth = 20.0;

    // Point de départ en haut à gauche
    path.moveTo(0, 0);

    // Descendre à gauche
    path.lineTo(0, size.height - waveHeight);

    // Créer les vagues convexes vers le haut
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

    // Remonter à droite
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
