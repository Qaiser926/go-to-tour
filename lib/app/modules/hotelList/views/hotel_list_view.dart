import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/home/components/hotel_near_you_item.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/custom_images.dart';

import '../controllers/hotel_list_controller.dart';

class HotelListView extends GetView<HotelListController> {
  final homeController=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Hotels'),
        centerTitle: true,
        actions: [
          SvgPicture.asset(
            CustomImages.filterIcon,
            color: CustomColors.white,
          ),
          SizedBox(width: 16),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.SEARCH_HOTELS);
            },
            child: SvgPicture.asset(CustomImages.searchIconTwo,
                color: CustomColors.white),
          ),
          SizedBox(width: 20),
        ],
      ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          HotelNearYouItem(),
        ],
      ),
    ),
    /*  body: Container(
        child: HotelNearYouItem(),
        // child: GridView.builder(
        //   itemCount:homeController.modal.value.results!.length,
        //   shrinkWrap: true,
        //   padding: EdgeInsets.all(10),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 8,
        //     crossAxisSpacing: 8,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     return HotelNearYouItem();
        //   },
        // ),
      ),*/
    );
  }
}
