// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:go_tour/app/modules/MyTripComplete/views/my_trip_complete_view.dart';
// import 'package:go_tour/app/modules/home/homeOfferListprovider/userProvider.dart';
// import 'package:go_tour/app/modules/home/modelClass/homeOfferListModelClass.dart';
// import 'package:go_tour/app/modules/home/navBarBottomViews/bottom_home_view.dart';
// import 'package:go_tour/app/modules/home/navBarBottomViews/profile_view.dart';
// import 'package:go_tour/app/modules/offers/views/offers_view.dart';
// import 'package:go_tour/app/modules/search/views/search_flight_view.dart';
//
// class FutureHotelControler extends GetxController with StateMixin<List<dynamic>> {
//   RxInt currentIndex = 0.obs;
//   List<Widget> homeViewWidget = [
//     BottomHomeView(),
//     SearchFlightView(),
//     MyTripCompleteView(),
//     OffersView(),
//     ProfileView(),
//   ];
//
//   @override
//   void onInit() {
//     super.onInit();
//     FutureHotelControler().then((resp) {
//       // List<HomeOfferListModelClass>? data = resp.;
//       change(resp, status: RxStatus.success());
//       log('every thing is fine');
//     }, onError: (err) {
//       change(null, status: RxStatus.error(err.toString()));
//       log(err.toString());
//     });
//
//
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//   }
// }
