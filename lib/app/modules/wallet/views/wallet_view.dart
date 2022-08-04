import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/wallet/components/add_card_button.dart';
import 'package:go_tour/app/modules/wallet/components/credit_card_view.dart';
import 'package:go_tour/app/modules/wallet/components/expenses_wallet_item.dart';
import 'package:go_tour/app/modules/wallet/components/wallet_dot.dart';
import 'package:go_tour/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';

class WalletView extends GetView<WalletController> {
  final _textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    letterSpacing: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wallet'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 255,
              child: ListView.builder(
                padding:
                    EdgeInsets.only(top: 24, bottom: 24, left: 14, right: 14),
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CreditCardView();
                },
              ),
            ),
            WalletDot(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Center(
                child: AddCardButton(
                  onTap: () {
                    Get.toNamed(Routes.ADD_CARD);
                  },
                ),
              ),
            ),
            expenseContainer(),
          ],
        ),
      ),
    );
  }

  Widget expenseContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: CustomColors.strokeGrayTwo.withOpacity(0.08),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expenses',
                  style: _textStyle.copyWith(
                    color: CustomColors.gray,
                  ),
                ),
                Text(
                  'View All',
                  style: _textStyle.copyWith(
                    color: CustomColors.primary,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ExpenseWalletItem();
            },
          ),
        ],
      ),
    );
  }
}
