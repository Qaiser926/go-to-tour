import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  final formKey = GlobalKey<FormState>();

  RxString cardNumber = ''.obs;
  RxString expiryDate = ''.obs;
  RxString cardHolderName = ''.obs;
  RxString cvvCode = ''.obs;

  RxBool isCvvFocused = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
