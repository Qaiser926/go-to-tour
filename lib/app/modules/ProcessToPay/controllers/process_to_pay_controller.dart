import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProcessToPayController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  String? guestField;
  var quantity = 0.obs;
  // PhoneNumber number = PhoneNumber(isoCode: 'BD');

  final images = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/2/200/300',
    'https://picsum.photos/id/1/200/300',
    'https://picsum.photos/id/3/200/300',
    'https://picsum.photos/id/8/200/300',
    'https://picsum.photos/id/9/200/300',
    'https://picsum.photos/id/66/200/300',
  ];
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

  void add() {
    quantity++;
  }

  void minue() {
    if (quantity > 0) quantity--;
  }
}
