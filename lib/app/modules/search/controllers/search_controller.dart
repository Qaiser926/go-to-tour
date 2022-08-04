import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  RxString isSelectValue = 'Local'.obs;
  RxString isSelectFlightValue = 'RoundTrip'.obs;

  final cityTextEditController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
