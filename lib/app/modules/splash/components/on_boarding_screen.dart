import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/constants/custom_colors.dart';

import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  final Widget imageWidget;
  final int index;
  final String title;

  const OnBoardingScreen({
    Key? key,
    required this.imageWidget,
    required this.title,
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            imageWidget,
            Spacer(),
            DotsIndicator(
              dotsCount: 3,
              position: index.toDouble(),
              decorator: DotsDecorator(
                activeColor: CustomColors.primary,
                color: CustomColors.strokeGrayTwo,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              '$title',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.sp,
                  letterSpacing: 1.2,
                  height: 1.2,
                  color: CustomColors.gray),
            ),
            SizedBox(height: 12.h),
            Text(
              '${Strings.onBoardingCaption}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.sp,
                  letterSpacing: 1.2,
                  height: 1.2,
                  color: CustomColors.deepGray),
            ),
            SizedBox(height: 18.h),
            Button(
              title: Strings.continueText,
              onTap: () {
                Get.offAndToNamed(Routes.HOME);
              },
            ),
            SizedBox(height: 16.h),
            TextButton(
              onPressed: () {
                Get.offAndToNamed(Routes.HOME);
              },
              child: Text(
                '${Strings.skipForNow}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.sp,
                    letterSpacing: 1.2,
                    height: 1.2,
                    color: CustomColors.deepGray),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
