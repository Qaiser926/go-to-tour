import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/wallet/controllers/wallet_controller.dart';
import 'package:go_tour/constants/custom_colors.dart';

class AddCardView extends GetView<WalletController> {
  cardNumberDecoration(String labelText, String hintText) => InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: CustomColors.deepGray),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.gray),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.deepGray),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelText: labelText,
        hintText: hintText,
        labelStyle: TextStyle(color: CustomColors.gray),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Card'),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Obx(() => ListView(
            children: [
              CreditCardWidget(
                cardNumber: controller.cardNumber.value,
                expiryDate: controller.expiryDate.value,
                cardHolderName: controller.cardHolderName.value,
                cvvCode: controller.cvvCode.value,
                showBackView: controller.isCvvFocused.value,
                obscureCardNumber: true,
                obscureCardCvv: true,
                isHolderNameVisible: true,
                cardBgColor: CustomColors.primary,
                isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                customCardTypeIcons: <CustomCardTypeIcon>[
                  CustomCardTypeIcon(
                    cardType: CardType.mastercard,
                    cardImage: Image.asset(
                      'packages/flutter_credit_card/icons/mastercard.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  CustomCardTypeIcon(
                    cardType: CardType.visa,
                    cardImage: Image.asset(
                      'packages/flutter_credit_card/icons/visa.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  CustomCardTypeIcon(
                    cardType: CardType.americanExpress,
                    cardImage: Image.asset(
                      'packages/flutter_credit_card/icons/amex.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                ],
              ),
              CreditCardForm(
                formKey: controller.formKey,
                cardNumber: controller.cardNumber.value,
                expiryDate: controller.expiryDate.value,
                cardHolderName: controller.cardHolderName.value,
                cvvCode: controller.cvvCode.value,
                onCreditCardModelChange: (CreditCardModel data) {
                  controller.cardNumber(data.cardNumber);
                  controller.expiryDate(data.expiryDate);
                  controller.cvvCode(data.cvvCode);
                  controller.cardHolderName(data.cardHolderName);
                  controller.isCvvFocused(data.isCvvFocused);
                },
                themeColor: CustomColors.primary,
                obscureCvv: true,
                obscureNumber: false,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                cardNumberDecoration:
                    cardNumberDecoration('Number', 'XXXX XXXX XXXX XXXX'),
                expiryDateDecoration:
                    cardNumberDecoration('Expired Date', 'XX/XX'),
                cvvCodeDecoration: cardNumberDecoration('CVV', 'XXX'),
                cardHolderDecoration: cardNumberDecoration('Card Holder', ''),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: CustomColors.primary,
                      fixedSize: Size(Get.width, 56)),
                  onPressed: () {},
                  child: Text('Add Card',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5)),
                ),
              ),
              SizedBox(height: 20)
            ],
          )),
    );
  }
}
