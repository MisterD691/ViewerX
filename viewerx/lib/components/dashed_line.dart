import "package:flutter/material.dart";

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpace;

  DashedBorderPainter({
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.dashLength = 5.0,
    this.dashSpace = 3.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final path = Path();
    final totalLength = 2 * (size.width + size.height);
    final dashInterval = dashLength + dashSpace;
    var currentPosition = 0.0;

    while (currentPosition < totalLength) {
      if (currentPosition + dashLength <= totalLength) {
        // Dessiner un segment
        if (currentPosition < size.width) {
          // Top border
          path.moveTo(currentPosition, 0);
          path.lineTo(currentPosition + dashLength, 0);
        } else if (currentPosition < size.width + size.height) {
          // Right border
          final y = currentPosition - size.width;
          path.moveTo(size.width, y);
          path.lineTo(size.width, y + dashLength);
        } else if (currentPosition < 2 * size.width + size.height) {
          // Bottom border (from right to left)
          final x = totalLength - currentPosition - dashLength;
          path.moveTo(x, size.height);
          path.lineTo(x + dashLength, size.height);
        } else {
          // Left border (from bottom to top)
          final y = totalLength - currentPosition - dashLength;
          path.moveTo(0, y);
          path.lineTo(0, y + dashLength);
        }
      }
      currentPosition += dashInterval;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
