import 'package:get/get.dart';
import 'package:go_tour/app/modules/map/controllers/map_controller.dart';


class MapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapController>(() => MapController());
  }
}
