import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/HotelDetails/components/image_swiper_component.dart';
import 'package:go_tour/app/modules/HotelDetails/components/tab_section_component.dart';

import '../controllers/hotel_details_controller.dart';

class HotelDetailsView extends GetView<HotelDetailsController> {

  dynamic argumentData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hotel Details'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ImageSwiperComponent(images: controller.images),
              SizedBox(height: 16),
              TabSectionComponent()
            ],
          ),
        ));
  }
}
