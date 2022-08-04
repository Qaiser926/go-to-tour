import 'package:get/get.dart';
import 'package:go_tour/app/modules/MyTripComplete/controllers/my_trip_complete_controller.dart';

class MyTripCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyTripCompleteController>(() => MyTripCompleteController());
  }
}
