import 'package:flutter/material.dart';

class DolDurmaClipper extends CustomClipper<Path> {
  final double holeRadius;
  final double heightFactor;

  DolDurmaClipper({required this.holeRadius, this.heightFactor = 2});

  @override
  Path getClip(Size size) {
    print(size.height);
    final bottom = size.height / heightFactor - holeRadius / heightFactor;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0.0, size.height - bottom - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - bottom),
        clockwise: true,
        radius: Radius.circular(1),
      )
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - bottom)
      ..arcToPoint(
        Offset(size.width, size.height - bottom - holeRadius),
        clockwise: true,
        radius: Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}
