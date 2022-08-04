import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool isShowPassword = true.obs;
  RxBool isConShowPassword = true.obs;

  void passwordChange() {
    isShowPassword.value = !isShowPassword.value;
  }

  void conPasswordChange() {
    isConShowPassword.value = !isConShowPassword.value;
  }

  final formKey = GlobalKey<FormState>();

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> registerUser() async {
    print('Register API Call');
  }
}
