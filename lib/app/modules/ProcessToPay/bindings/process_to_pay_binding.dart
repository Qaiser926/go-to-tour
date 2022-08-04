import 'package:get/get.dart';

import '../controllers/process_to_pay_controller.dart';

class ProcessToPayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProcessToPayController>(
      () => ProcessToPayController(),
    );
  }
}
