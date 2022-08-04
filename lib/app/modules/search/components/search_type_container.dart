import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/app/modules/search/components/search_type.dart';
import 'package:go_tour/constants/custom_colors.dart';

class SearchTypeContainer extends StatelessWidget {
  const SearchTypeContainer({
    Key? key,
    required this.firstTitle,
    required this.firstIsSelect,
    required this.firstOnTap,
    required this.secondTitle,
    required this.secondIsSelect,
    required this.secondOnTap,
  }) : super(key: key);

  final String firstTitle;
  final bool firstIsSelect;
  final VoidCallback firstOnTap;

  final String secondTitle;
  final bool secondIsSelect;
  final VoidCallback secondOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.r),
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          SearchType(
            title: firstTitle,
            isSelect: firstIsSelect,
            onTap: firstOnTap,
          ),
          SizedBox(width: 10),
          SearchType(
            title: secondTitle,
            isSelect: secondIsSelect,
            onTap: secondOnTap,
          ),
        ],
      ),
    );
  }
}
