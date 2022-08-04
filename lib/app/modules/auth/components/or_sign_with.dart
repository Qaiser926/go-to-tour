import 'package:flutter/material.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrSignWith extends StatelessWidget {
  final String text;

  const OrSignWith({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          height: 1.2,
          letterSpacing: 1.2,
          color: CustomColors.gray,
        ),
      ),
    );
  }
}
