import 'package:get/get.dart';

import '../controllers/ticket_details_controller.dart';

class TicketDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketDetailsController>(
      () => TicketDetailsController(),
    );
  }
}
