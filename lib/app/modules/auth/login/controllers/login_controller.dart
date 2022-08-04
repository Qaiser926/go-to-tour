import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:go_tour/utils/shared_preferences_service.dart';

class LoginController extends GetxController {
  RxBool isShowPassword = true.obs;

  void passwordChange() {
    isShowPassword.value = !isShowPassword.value;
  }

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> loginUser() async {
    print('Login API Call');
    await SharedPreferencesService.setAccessToken(Strings.accessToken);
    Get.offAndToNamed(Routes.HOME);
  }
}
