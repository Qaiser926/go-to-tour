import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/constants/custom_images.dart';
import 'package:go_tour/constants/strings.dart';

class SplashController extends GetxController {
  RxInt currentIndex = 0.obs;

  final PageController pageController = PageController();

  List<SvgPicture> images = [
    SvgPicture.asset('${CustomImages.onBoardingFirstImage}'),
    SvgPicture.asset('${CustomImages.onBoardingSecondImage}'),
    SvgPicture.asset('${CustomImages.onBoardingThirdImage}'),
  ];

  List<String> titles = [
    Strings.onBoardingFirstTitle,
    Strings.onBoardingSecondTitle,
    Strings.onBoardingThirdTitle,
  ];
}
