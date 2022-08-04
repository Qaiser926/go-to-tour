import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapCustomIcon extends StatelessWidget {
  const MapCustomIcon({
    Key? key,
    required this.color,
    required this.iconPath,
  }) : super(key: key);

  final Color color;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 20),
      child: SvgPicture.asset(iconPath),
    );
  }
}
