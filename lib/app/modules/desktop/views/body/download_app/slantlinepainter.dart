import 'package:flutter/material.dart';

class SlantLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(224, 192, 192, 208) // Change the color of the line if needed
      ..strokeWidth = 1.0;

    final startPoint = Offset(size.width, 0);
    final endPoint = Offset(0, size.height);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}