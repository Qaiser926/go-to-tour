import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/modules/home/components/popular_offer_item.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/modules/search/components/custom_select_date.dart';
import 'package:go_tour/app/modules/search/components/search_type_container.dart';
import 'package:go_tour/app/modules/search/controllers/search_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/strings.dart';

import '../../../../constants/custom_colors.dart';

class SearchFlightView extends GetView<SearchController> {
  // HomeController homecontroller=Get.put(HomeController());
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
              height: 70.h,
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

            // Container(
            //   width: double.infinity,
            //   height: 300,
            //   child: PopularOfferItem(),
            // ),
            Container(
              child: Obx(() {
                final homecontroller = Get.find<HomeController>();
                if (homecontroller.isLoading.value) {
                  return Center(child: const CircularProgressIndicator());
                }
                if (homecontroller.isEmptyData.value) {
                  return Center(
                      child: InkWell(
                        onTap: () {},
                        child: const Text("No Data Found"),
                      ));
                }

                return GridView.builder(
                  // itemCount: controller.modal.value.results!.length,
                  itemCount: homecontroller.modal.value.featuredFlights!.length,
                  // itemCount: 10,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      top: 0, left: 0, right: 0, bottom: 10),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    var itemData = homecontroller.modal.value
                        .featuredFlights![index];
                    // var itemData = controller.modal.value.results![index];
                    return   Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                      child: Container(

                        height: 140.h,
                        width: 130.w,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: 8,bottom: 12,left: 12),
                        // decoration: BoxDecoration(
                        //   image: DecorationImage(
                        //     // image: NetworkImage(itemData.picture!.large.toString()),
                        //       image: NetworkImage(itemData.thumbnail.toString()),
                        //       fit: BoxFit.contain
                        //   ),
                        //   // color: Colors.amber,
                        //   borderRadius: BorderRadius.circular(14.r),
                        //   // gradient: LinearGradient(
                        //   //   colors: [
                        //   //     Colors.grey.withOpacity(0.2),
                        //   //     Colors.black,
                        //   //   ],
                        //   //   stops: [0.0, 1.0],
                        //   //   begin: FractionalOffset.topCenter,
                        //   //   end: FractionalOffset.bottomCenter,
                        //   // ),
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Get.size.width*0.85,
                              height: Get.size.height*0.175,
                              child:Image.network(itemData.thumbnail.toString(),
                                fit: BoxFit.fill,
                              )
                            ),
                            // Spacer(),
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
                            SizedBox(height: 10,),
                            Text(
                              Strings.getFreeLunch,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                letterSpacing: 1.2,
                                height: 1.4,
                                color: Colors.black45,
                                fontSize: 10.sp,
                              ),
                            ),
                            // Text(
                            //   // Strings.getFreeLunch,
                            //   itemData.featuredFlights[index].
                            //   maxLines: 2,
                            //   overflow: TextOverflow.ellipsis,
                            //   style: TextStyle(
                            //     letterSpacing: 1.2,
                            //     height: 1.4,
                            //     color: CustomColors.white,
                            //     fontSize: 10.sp,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    );
                  });
              }          )



            )],
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
