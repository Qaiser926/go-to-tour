import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: Get.width / 1.2,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: CustomColors.primary,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomColors.primary,
            blurRadius: 20.0,
            spreadRadius: -15.0,
            offset: Offset(0.0, 20.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: CustomColors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  top: 20,
                  left: 20,
                ),
                Positioned(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: CustomColors.secondary.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                  ),
                  top: 20,
                  left: 50,
                ),
              ],
            ),
          ),
          cardNumberView(),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CARD HOLDER',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14.sp,
                        color: CustomColors.white.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      'S. Gerrard',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        height: 1,
                        color: CustomColors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'EXPIRES',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14.sp,
                        color: CustomColors.white.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      '01/25',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 17.sp,
                        color: CustomColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardNumberView() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '2598',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              fontSize: 18.sp,
              letterSpacing: 1.2,
              color: CustomColors.white,
            ),
          ),
          Text(
            '****',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              fontSize: 18.sp,
              letterSpacing: 1.2,
              color: CustomColors.white,
            ),
          ),
          Text(
            '****',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              fontSize: 18.sp,
              letterSpacing: 1.2,
              color: CustomColors.white,
            ),
          ),
          Text(
            '1073',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.normal,
              fontSize: 18.sp,
              letterSpacing: 1.2,
              color: CustomColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
