import 'package:get/get.dart';

import '../controllers/hotel_list_controller.dart';

class HotelListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelListController>(
      () => HotelListController(),
    );
  }
}
