import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/components/custom_form_field.dart';
import 'package:go_tour/app/modules/auth/components/have_an_account_or_not_view.dart';
import 'package:go_tour/app/modules/auth/components/or_sign_with.dart';
import 'package:go_tour/app/modules/auth/components/social_buttons.dart';
import 'package:go_tour/app/modules/auth/login/controllers/login_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/custom_images.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(Strings.singIn, textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: CustomColors.primary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: CustomColors.primary,
              height: Get.height / 2,
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              padding: EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: _buildBody(context),
            ),
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

  Widget _buildBody(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          SizedBox(height: 44),
          CustomFormField(
            title: Strings.enterEmail,
            hintText: Strings.hintEmail,
            icon: Icons.email_outlined,
            keyBoardType: TextInputType.emailAddress,
            controller: controller.emailController,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Enter email';
              if (!GetUtils.isEmail(value)) return 'Email is not valid';
              return null;
            },
          ),
          SizedBox(height: 24.h),
          Obx(() => CustomFormField(
                title: Strings.password,
                hintText: Strings.hintPassword,
                icon: Icons.lock_outline,
                keyBoardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Enter password';
                  return null;
                },
                showPassword: controller.isShowPassword.value,
                controller: controller.passwordController,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.passwordChange();
                  },
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: CustomColors.gray,
                  ),
                ),
              )),
          SizedBox(height: 24.h),
          Button(
            title: Strings.singIn,
            height: 56.h,
            width: double.infinity,
            onTap: () {
              final isValid = controller.formKey.currentState!.validate();
              if (!isValid) {
                return;
              }
              controller.formKey.currentState!.save();

              FocusScope.of(context).requestFocus(FocusNode());

              controller.loginUser();
            },
          ),
          SizedBox(height: 24.h),
          HaveAnAccountOrNotView(
            onPressed: () {
              Get.offAndToNamed(Routes.REGISTER);
            },
            isLogin: true,
          ),
          SizedBox(height: 100),
          OrSignWith(text: Strings.orSignInWith),
          SizedBox(height: 20),
          SocialButtons(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
