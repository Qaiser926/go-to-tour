import 'package:flutter/material.dart';
import 'package:go_tour/constants/custom_colors.dart';

class BookMarkIcon extends StatelessWidget {
  const BookMarkIcon({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 24,
          width: 24,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(Icons.bookmark, size: 18, color: CustomColors.primary),
        ),
      ),
    );
  }
}
