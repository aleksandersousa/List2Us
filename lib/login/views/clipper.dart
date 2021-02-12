import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    final Offset controlPoint1 = Offset(0.0, size.height - (size.height * .35));
    final Offset endPoint1 = Offset(size.width - (size.width * .85), size.height - (size.height * .35));
    path.quadraticBezierTo(controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);

    final Offset controlPoint2 = Offset(size.width, size.height - (size.height * .35));
    final Offset endPoint2 = Offset(size.width, size.height);
    path.quadraticBezierTo(controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);
    
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
