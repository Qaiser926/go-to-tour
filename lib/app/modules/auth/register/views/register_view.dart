import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/components/custom_form_field.dart';
import 'package:go_tour/app/modules/auth/components/have_an_account_or_not_view.dart';
import 'package:go_tour/app/modules/auth/components/or_sign_with.dart';
import 'package:go_tour/app/modules/auth/components/social_buttons.dart';
import 'package:go_tour/app/modules/auth/register/controllers/register_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/custom_images.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(Strings.singUp, textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: CustomColors.primary,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //top color
            Container(
              color: CustomColors.primary,
              height: Get.height / 2,
            ),
            // body with white color
            Container(
              margin: EdgeInsets.only(top: 70),
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: CustomColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: _buildForm(context),
            ),
            // app logo
            Positioned(
              top: 28,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: CustomColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(CustomImages.logo),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Obx(() => Form(
          key: controller.formKey,
          child: Column(
            children: [
              SizedBox(height: 44),
              CustomFormField(
                title: Strings.fullName,
                hintText: Strings.hintName,
                icon: Icons.person_outline_rounded,
                keyBoardType: TextInputType.text,
                controller: controller.fullNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter full name';
                  return null;
                },
              ),
              SizedBox(height: 24.h),
              CustomFormField(
                title: Strings.enterEmail,
                hintText: Strings.hintEmail,
                icon: Icons.email_outlined,
                controller: controller.emailController,
                keyBoardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter email';
                  if (!GetUtils.isEmail(value)) return 'Email is not valid';
                  return null;
                },
              ),
              SizedBox(height: 24.h),
              CustomFormField(
                title: Strings.password,
                hintText: Strings.hintPassword,
                icon: Icons.lock_outline,
                keyBoardType: TextInputType.visiblePassword,
                controller: controller.passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter password';
                  return null;
                },
                showPassword: controller.isShowPassword.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.passwordChange();
                  },
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: CustomColors.gray,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              CustomFormField(
                title: Strings.confirmPassword,
                hintText: Strings.hintPassword,
                icon: Icons.lock_outline,
                keyBoardType: TextInputType.visiblePassword,
                controller: controller.confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter password';
                  if (value.trim() != controller.passwordController.text.trim())
                    return 'Password not match';
                  return null;
                },
                showPassword: controller.isConShowPassword.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.conPasswordChange();
                  },
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: CustomColors.gray,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Button(
                title: Strings.singUp,
                height: 56.h,
                width: double.infinity,
                onTap: () {
                  final isValid = controller.formKey.currentState!.validate();
                  if (!isValid) {
                    return;
                  }
                  controller.formKey.currentState!.save();

                  FocusScope.of(context).requestFocus(FocusNode());

                  controller.registerUser();
                },
              ),
              SizedBox(height: 24.h),
              HaveAnAccountOrNotView(
                onPressed: () {
                  Get.offAndToNamed(Routes.LOGIN);
                },
                isLogin: false,
              ),
              SizedBox(height: 24.h),
              OrSignWith(text: Strings.orSignUpWith),
              SizedBox(height: 24.h),
              SocialButtons(),
              SizedBox(height: 24.h),
            ],
          ),
        ));
  }
}
