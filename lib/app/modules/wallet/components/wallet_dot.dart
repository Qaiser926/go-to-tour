import 'package:flutter/material.dart';
import 'package:go_tour/constants/custom_colors.dart';

class WalletDot extends StatelessWidget {
  const WalletDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 6,
          width: 25,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: CustomColors.primary,
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          height: 6,
          width: 25,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: CustomColors.strokeGrayTwo,
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          height: 6,
          width: 25,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: CustomColors.strokeGrayTwo,
              borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
