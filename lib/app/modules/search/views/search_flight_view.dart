import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/modules/home/components/popular_offer_item.dart';
import 'package:go_tour/app/modules/search/components/custom_select_date.dart';
import 'package:go_tour/app/modules/search/components/search_type_container.dart';
import 'package:go_tour/app/modules/search/controllers/search_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';

class SearchFlightView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Flights'), centerTitle: true),
      body: Obx(
        () => ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          children: [
            _searchTypeContainer(),
            SizedBox(height: 30.h),
            SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  CustomSelectDate(
                    title: 'In Air',
                    iconPath: 'assets/images/arrow_down.svg',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            _checkInOutRow(
              'Departure',
              'assets/images/Calendar.svg',
              'Return',
              'assets/images/Calendar.svg',
            ),
            SizedBox(height: 16.h),
            _checkInOutRow(
              'From',
              'assets/images/Location.svg',
              'To',
              'assets/images/Location.svg',
            ),
            SizedBox(height: 16.h),
            _checkInOutRow(
              'Passenger',
              'assets/images/arrow_down.svg',
              'Class',
              'assets/images/arrow_down.svg',
            ),
            SizedBox(height: 16.h),
            Button(
              width: double.infinity,
              height: 50.h,
              title: 'Search Flight',
              onTap: () {
                Get.toNamed(Routes.SEARCH_RESULT);
              },
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
                return PopularOfferItem();
              },
            )
          ],
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
      firstTitle: 'Round Trip',
      firstIsSelect:
          controller.isSelectFlightValue.value == 'RoundTrip' ? true : false,
      firstOnTap: () {
        controller.isSelectFlightValue('RoundTrip');
      },
      secondTitle: 'Oneway',
      secondIsSelect:
          controller.isSelectFlightValue.value == 'Oneway' ? true : false,
      secondOnTap: () {
        controller.isSelectFlightValue('Oneway');
      },
    );
  }
}
