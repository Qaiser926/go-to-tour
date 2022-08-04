import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/splash/components/on_boarding_screen.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Obx(() => Scaffold(
            body: PageView(
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.currentIndex(index);
              },
              children: [
                OnBoardingScreen(
                  imageWidget: controller.images[controller.currentIndex.value],
                  title: controller.titles[controller.currentIndex.value],
                  index: controller.currentIndex.value,
                ),
                OnBoardingScreen(
                  imageWidget: controller.images[controller.currentIndex.value],
                  title: controller.titles[controller.currentIndex.value],
                  index: controller.currentIndex.value,
                ),
                OnBoardingScreen(
                  imageWidget: controller.images[controller.currentIndex.value],
                  title: controller.titles[controller.currentIndex.value],
                  index: controller.currentIndex.value,
                ),
              ],
            ),
          )),
    );
  }
}
