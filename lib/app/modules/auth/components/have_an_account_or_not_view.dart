import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/strings.dart';

class HaveAnAccountOrNotView extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isLogin;

  const HaveAnAccountOrNotView(
      {Key? key, this.onPressed, required this.isLogin})
      : super(key: key);

  TextStyle _textStyle() => TextStyle(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 16.sp,
        letterSpacing: 1.2,
        height: 1.2,
        color: CustomColors.deepGray,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLogin ? Strings.dontHaveAnAccount : Strings.alreadyHaveAnAccount,
          style: _textStyle(),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            isLogin ? Strings.singUp : Strings.singIn,
            style: _textStyle().copyWith(
              fontWeight: FontWeight.w500,
              color: CustomColors.primary,
            ),
          ),
        )
      ],
    );
  }
}
