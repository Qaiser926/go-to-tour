import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/input_decoration.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  final titleStyle = TextStyle(
    fontSize: 12,
    color: CustomColors.deepGray,
    height: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Select payment method',
                style: TextStyle(
                  fontSize: 16,
                  color: CustomColors.gray,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 56,
              child: ListView(
                padding: const EdgeInsets.only(left: 8, right: 8),
                scrollDirection: Axis.horizontal,
                children: [
                  paymentCard('card.svg', 'Card'),
                  paymentCard('mastercard.svg', 'Visa'),
                  paymentCard('visa_card.svg', 'Master'),
                  paymentCard('card.svg', 'Card'),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(24),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.primary,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildForm(),
                  SizedBox(height: 20),
                  _buildDetails(),
                  SizedBox(height: 20),
                  Center(
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: CustomColors.secondary,
                          fixedSize: Size(Get.width, 56)),
                      onPressed: () => Get.toNamed(Routes.WALLET),
                      child: Text('Process to Pay',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.5)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildDetails() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name', textAlign: TextAlign.start, style: titleStyle),
                Text(
                  '\$1200',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.5),
                )
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tax', textAlign: TextAlign.start, style: titleStyle),
                Text(
                  '\$1200',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.5),
                )
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Black Friday Offer',
                    textAlign: TextAlign.start, style: titleStyle),
                Text(
                  '\$1200',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.5),
                )
              ],
            ),
            Container(
              height: 1,
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.solid)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Ammount',
                    textAlign: TextAlign.start,
                    style: titleStyle.copyWith(color: CustomColors.gray)),
                Text(
                  '\$1200',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: CustomColors.primary),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _buildForm() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Name', textAlign: TextAlign.start, style: titleStyle),
            SizedBox(height: 12),
            TextFormField(
              controller: controller.nameController,
              decoration: CommonDecoration.inputdecoration('Name'),
            ),
            SizedBox(height: 24),
            Text('Card Number', textAlign: TextAlign.start, style: titleStyle),
            SizedBox(height: 12),
            TextFormField(
              controller: controller.cardController,
              decoration: CommonDecoration.inputdecoration('Card Number'),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expire Date',
                          textAlign: TextAlign.start, style: titleStyle),
                      SizedBox(height: 12),
                      TextFormField(
                        controller: controller.dateController,
                        decoration:
                            CommonDecoration.inputdecoration('Expire Date'),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVC',
                          textAlign: TextAlign.start, style: titleStyle),
                      SizedBox(height: 12),
                      TextFormField(
                        controller: controller.cvcController,
                        decoration: CommonDecoration.inputdecoration('CVV'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget paymentCard(String icon, String text) {
    return Container(
      height: 56,
      width: 106,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: CustomColors.primary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/$icon', height: 24, width: 24),
          SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }
}
