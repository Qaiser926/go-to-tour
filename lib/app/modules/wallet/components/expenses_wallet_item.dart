import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/constants/custom_colors.dart';

class ExpenseWalletItem extends StatelessWidget {
  ExpenseWalletItem({
    Key? key,
  }) : super(key: key);

  final _textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    letterSpacing: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/images/Logo.png',
        height: 42.h,
        width: 42.w,
      ),
      title: Text(
        'City Bank',
        style: _textStyle.copyWith(
          color: CustomColors.gray,
          fontSize: 14.sp,
        ),
      ),
      subtitle: Text(
        'Flight Rent',
        style: _textStyle.copyWith(
          color: CustomColors.deepGray,
          fontSize: 12.sp,
        ),
      ),
      trailing: Text(
        '-\$99.00',
        style: _textStyle.copyWith(
          color: CustomColors.gray,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
