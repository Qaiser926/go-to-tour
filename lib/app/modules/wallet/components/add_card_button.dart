import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        padding: EdgeInsets.zero,
        color: CustomColors.primary,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: Container(
            height: 50.h,
            width: Get.width,
            color: CustomColors.primary.withOpacity(0.2),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: CustomColors.primary),
                  Text(
                    'Add Card',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: CustomColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
