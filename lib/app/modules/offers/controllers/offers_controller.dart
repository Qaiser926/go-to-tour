import 'package:get/get.dart';
import 'package:go_tour/app/common_model/offer_model.dart';

class OffersController extends GetxController {
  final offers = <OfferModel>[].obs;
  @override
  void onInit() {
    super.onInit();

    var _now = DateTime.now().toIso8601String();

    offers.value = List.generate(
      10,
      (index) => OfferModel(
          id: index,
          title: 'Get $index% cashback by paying through YES Bank ',
          cardInfo: _now,
          offerIcon: 'assets/images/yes_card.png',
          image: 'assets/images/my_trip.png'),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
