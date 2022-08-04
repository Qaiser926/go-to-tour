import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/modules/home/components/hotel_near_you_item.dart';
import 'package:go_tour/app/modules/search/components/custom_search_text_field.dart';
import 'package:go_tour/app/modules/search/components/custom_select_date.dart';
import 'package:go_tour/app/modules/search/components/search_type_container.dart';
import 'package:go_tour/app/modules/search/controllers/search_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/constants/custom_colors.dart';

class SearchView extends GetView<SearchController> {
  final _textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    letterSpacing: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Hotels'),
        centerTitle: true,
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _searchTypeContainer(),
                  SizedBox(height: 30.h),
                  CustomSearchTextField(
                    hintText: 'City',
                    controller: controller.cityTextEditController,
                  ),
                  SizedBox(height: 16.h),
                  _checkInOutRow(
                    'Check-in',
                    'assets/images/Calendar.svg',
                    'Check-out',
                    'assets/images/Calendar.svg',
                  ),
                  SizedBox(height: 16.h),
                  _checkInOutRow(
                    'Guest',
                    'assets/images/guest.svg',
                    'Rooms',
                    'assets/images/arrow_down.svg',
                  ),
                  SizedBox(height: 16.h),
                  Button(
                    width: double.infinity,
                    height: 50.h,
                    title: 'Search Hotel',
                    onTap: () {
                      // Get.toNamed(Routes.SEARCH_FLIGHTS);
                    },
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Popular Hotels',
                    style: _textStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: CustomColors.gray,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  GridView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 0, bottom: 10),
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return HotelNearYouItem();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _checkInOutRow(
      String firstTitle, firstIconPath, secondTitle, secondIconPath) {
    return Row(
      children: [
        CustomSelectDate(
          title: firstTitle,
          iconPath: firstIconPath,
        ),
        SizedBox(width: 15.w),
        CustomSelectDate(
          title: secondTitle,
          iconPath: secondIconPath,
        ),
      ],
    );
  }

  Widget _searchTypeContainer() {
    return SearchTypeContainer(
      firstTitle: 'International',
      firstIsSelect:
          controller.isSelectValue.value == 'International' ? true : false,
      firstOnTap: () {
        controller.isSelectValue('International');
      },
      secondTitle: 'Local',
      secondIsSelect: controller.isSelectValue.value == 'Local' ? true : false,
      secondOnTap: () {
        controller.isSelectValue('Local');
      },
    );
  }
}
