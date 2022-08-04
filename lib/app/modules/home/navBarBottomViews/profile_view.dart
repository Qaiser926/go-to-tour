import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/utils/shared_preferences_service.dart';

class ProfileView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProfileView'), centerTitle: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: CustomColors.white,
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
              child: Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Steven Gerrard',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: CustomColors.gray,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'sgerrad@gmail.com',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: CustomColors.deepGray,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
              margin: EdgeInsets.only(top: 8.h),
              color: CustomColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileAction(
                      onTap: () => Get.toNamed(Routes.MY_TRIP_COMPLETE),
                      title: 'My Trip'),
                  ProfileAction(title: 'Saved'),
                  ProfileAction(title: 'Offer & Promotion'),
                  ProfileAction(
                      onTap: () => Get.toNamed(Routes.REVIEW),
                      title: 'My Review'),
                  ProfileAction(
                    title: 'Wallet',
                    onTap: () {
                      Get.toNamed(Routes.WALLET);
                    },
                  ),
                  ProfileAction(title: 'Settings'),
                  SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      SharedPreferencesService.logout();
                    },
                    child: Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileAction extends StatelessWidget {
  const ProfileAction({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: CustomColors.gray,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: CustomColors.gray,
                size: 14.r,
              )
            ],
          ),
          SizedBox(height: 12.h),
          Divider(
            color: Color(0xFFEBF0FF),
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
