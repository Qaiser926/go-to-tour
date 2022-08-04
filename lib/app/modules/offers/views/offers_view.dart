import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/common_model/offer_model.dart';
import 'package:go_tour/constants/custom_colors.dart';
import '../controllers/offers_controller.dart';

class OffersView extends GetView<OffersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Offers'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: controller.offers.length,
        itemBuilder: (_, int index) {
          return _singleOfferCard(controller.offers[index]);
        },
      ),
    );
  }

  Widget _singleOfferCard(OfferModel offerModel) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(offerModel.image, fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 15),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(offerModel.offerIcon, height: 28, width: 75),
                  SizedBox(height: 5),
                  Text(
                    offerModel.title,
                    maxLines: 2,
                    style: TextStyle(
                        color: CustomColors.gray, height: 1.6, fontSize: 12),
                  ),
                  SizedBox(height: 3),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'credit card',
                      style: TextStyle(
                          color: CustomColors.primary,
                          fontSize: 10,
                          height: 1.2),
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
}
