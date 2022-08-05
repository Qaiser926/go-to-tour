import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/modules/MyTripComplete/views/my_trip_complete_view.dart';
import 'package:go_tour/app/modules/home/homeOfferListprovider/userProvider.dart';
import 'package:go_tour/app/modules/home/modelClass/homeOfferListModelClass.dart';
import 'package:go_tour/app/modules/home/navBarBottomViews/bottom_home_view.dart';
import 'package:go_tour/app/modules/home/navBarBottomViews/profile_view.dart';
import 'package:go_tour/app/modules/offers/views/offers_view.dart';
import 'package:go_tour/app/modules/search/views/search_flight_view.dart';
import 'package:http/http.dart' as http;


import '../modelClass/HomeofferListModel.dart';

// class HomeController extends GetxController with StateMixin<List<dynamic>> {
// class HomeController extends GetxController with StateMixin<List<dynamic>>{
class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  var  getposts=<HomeOfferListModelClass>[].obs;
  UserProvider services=UserProvider();



  // var isLoading=true.obs;
  // var productList=<HomeofferListModel>[].obs;
  List<Widget> homeViewWidget = [
    BottomHomeView(),
    SearchFlightView(),
    MyTripCompleteView(),
    OffersView(),
    ProfileView(),
  ];


  @override
  void onInit() {
    super.onInit();
    /*UserProvider().getUser().then((resp) {
      // List<HomeOfferListModelClass>? data = resp.;
      change(resp, status: RxStatus.success());
      log('every thing is fine');
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
      log(err.toString());
    });*/
    fetchProduct();

  }
  fetchProduct()async{

  var results= await services.getUser();
  log('yaha tak to tik he 11');
 if(results!=null){
   log('yaha tak b tik he 12');
   getposts.assignAll(results);
   print(results);
 }else{
   print('null');
   log('yaha par error he ');
 }
  }
  @override
  void onReady() {
    super.onReady();
  }
}

