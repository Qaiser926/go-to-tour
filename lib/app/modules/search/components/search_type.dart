import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_tour/constants/custom_colors.dart';

class SearchType extends StatelessWidget {
  SearchType({
    Key? key,
    required this.isSelect,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final _textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    letterSpacing: 1.2,
  );

  final bool isSelect;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 44.h,
          decoration: BoxDecoration(
            color: isSelect ? CustomColors.primary : CustomColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(
            child: Text(
              title,
              style: _textStyle.copyWith(
                color: isSelect ? CustomColors.white : CustomColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
