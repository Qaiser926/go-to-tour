import 'package:get/get.dart';
import 'package:go_tour/app/modules/search/controllers/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
