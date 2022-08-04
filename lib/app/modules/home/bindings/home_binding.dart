import 'package:get/get.dart';
import 'package:go_tour/app/modules/MyTripComplete/controllers/my_trip_complete_controller.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/modules/offers/controllers/offers_controller.dart';
import 'package:go_tour/app/modules/search/controllers/search_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MyTripCompleteController>(MyTripCompleteController());
    Get.put<OffersController>(OffersController());
    Get.put<SearchController>(SearchController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
