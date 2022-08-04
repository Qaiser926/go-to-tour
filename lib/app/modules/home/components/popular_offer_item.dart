import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/strings.dart';

class PopularOfferItem extends StatelessWidget {
  const PopularOfferItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 130.w,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(14.r),
        gradient: LinearGradient(
          colors: [
            Colors.grey.withOpacity(0.2),
            Colors.black,
          ],
          stops: [0.0, 1.0],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Text(
            Strings.newYear,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              letterSpacing: 1.2,
              height: 1.4,
              color: CustomColors.secondary,
              fontSize: 10.sp,
            ),
          ),
          Text(
            Strings.getFreeLunch,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              letterSpacing: 1.2,
              height: 1.4,
              color: CustomColors.white,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
