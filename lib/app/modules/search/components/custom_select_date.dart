import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_tour/constants/custom_colors.dart';

class CustomSelectDate extends StatelessWidget {
  const CustomSelectDate({
    Key? key,
    required this.title,
    this.iconPath,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String? iconPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(14.r),
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: CustomColors.strokeGrayTwo),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14.sp,
                  color: CustomColors.deepGray,
                ),
              ),
              if (iconPath != null) SvgPicture.asset(iconPath!),
            ],
          ),
        ),
      ),
    );
  }
}
