import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/flight/components/flight_card_component.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/custom_images.dart';
import 'package:go_tour/utils/utils.dart';

import '../controllers/flight_controller.dart';

class FlightView extends GetView<FlightController> {
  final homecontroller=Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flights'),
        centerTitle: true,
        elevation: 0,
        actions: [
          SvgPicture.asset(
            CustomImages.filterIcon,
            color: CustomColors.white,
          ),
          SizedBox(width: 16),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.SEARCH_FLIGHTS);
            },
            child: SvgPicture.asset(
              CustomImages.searchIconTwo,
              color: CustomColors.white,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: [
          _buildHOraizontalDate(),
          FlightCardComponent(),
        ],
      ),
    );
  }



  Widget _buildHOraizontalDate() {
    final controller=Get.put(FlightController());
    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (_, int i) {
          return InkWell(
            onTap: () => controller.selectedItem(i),
            child: Obx(() => Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: i == controller.selectedItem.value
                          ? CustomColors.primary
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffE5E5E5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sat',
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.5,
                            color: controller.selectedItem.value == i
                                ? Colors.white
                                : CustomColors.deepGray),
                      ),
                      Text(
                        Utils.twoDigitNumber(i + 1),
                        style: TextStyle(
                            fontSize: 14,
                            height: 1,
                            color: controller.selectedItem.value == i
                                ? Colors.white
                                : CustomColors.gray),
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
