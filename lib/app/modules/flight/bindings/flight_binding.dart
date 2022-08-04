import 'package:get/get.dart';

import '../controllers/flight_controller.dart';

class FlightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlightController>(
      () => FlightController(),
    );
  }
}
