import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/custom_images.dart';
import 'package:go_tour/constants/strings.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.homeViewWidget[controller.currentIndex.value],
          bottomNavigationBar: _bottomNavigationBar(),
        ));
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: controller.currentIndex.value,
      onTap: (index) {
        controller.currentIndex(index);
      },
      selectedItemColor: CustomColors.primary,
      unselectedItemColor: CustomColors.deepGray,
      selectedLabelStyle: TextStyle(
        letterSpacing: 1,
      ),
      unselectedLabelStyle: TextStyle(letterSpacing: 1),
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              controller.currentIndex.value == 0
                  ? CustomImages.homeIcon
                  : CustomImages.homeIconTwo,
              color: controller.currentIndex.value == 0
                  ? CustomColors.primary
                  : CustomColors.deepGray,
            ),
            label: Strings.home),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              controller.currentIndex.value == 1
                  ? CustomImages.searchIcon
                  : CustomImages.searchIconTwo,
              color: controller.currentIndex.value == 1
                  ? CustomColors.primary
                  : CustomColors.deepGray,
            ),
            label: Strings.search),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              controller.currentIndex.value == 2
                  ? CustomImages.workIcon
                  : CustomImages.workIconTwo,
              color: controller.currentIndex.value == 2
                  ? CustomColors.primary
                  : CustomColors.deepGray,
            ),
            label: Strings.trip),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              controller.currentIndex.value == 3
                  ? CustomImages.offerIcon
                  : CustomImages.offerIconTwo,
              color: controller.currentIndex.value == 3
                  ? CustomColors.primary
                  : CustomColors.deepGray,
            ),
            label: Strings.offers),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              controller.currentIndex.value == 4
                  ? CustomImages.profileIcon
                  : CustomImages.profileIconTwo,
              color: controller.currentIndex.value == 4
                  ? CustomColors.primary
                  : CustomColors.deepGray,
            ),
            label: Strings.profile),
      ],
    );
  }
}
