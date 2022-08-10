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
  // var dataModel=HomeOfferListModelClass().obs;
  // TestModelClass? user_model;
  // var isDataLoading = false.obs;
  // var  getposts=<HomeOfferListModelClass>[].obs;
  // var  getposts=<TestModelClass>[].obs;
  // UserProvider services=UserProvider();
  // UserProvider services=UserProvider();

  var name = "".obs;
  var isLoading = false.obs;
  var modal = HomeOfferListModelClass().obs;
  var isEmptyData = false.obs;


  // var isLoading=true.obs;
  // var productList=<HomeofferListModel>[].obs;
  List<Widget> homeViewWidget = [
    BottomHomeView(),
    SearchFlightView(),
    MyTripCompleteView(),
    OffersView(),
    ProfileView(),
  ];

  // getApi() async {
  //   try{
  //     isDataLoading(true);
  //     http.Response response = await http.get(
  //         Uri.tryParse('https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd')!,
  //         // headers: {'app-id': '6218809df11d1d412af5bac4'}
  //     );
  //     // print(response.body);
  //     if(response.statusCode == 200){
  //       ///data successfully
  //
  //       var result = jsonDecode(response.body);
  //       print(result);
  //
  //       user_model =  HomeOfferListModelClass.fromJson(result);
  //
  //     }else{
  //       ///error
  //     }
  //   }catch(e){
  //     log('Error while getting data is $e');
  //     print('Error while getting data is $e');
  //   }finally{
  //     isDataLoading(false);
  //   }
  // }

  @override
  void onInit() {
    super.onInit();
    // getApi();
    /*UserProvider().getUser().then((resp) {
      // List<HomeOfferListModelClass>? data = resp.;
      change(resp, status: RxStatus.success());
      log('every thing is fine');
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
      log(err.toString());
    });*/
    // fetchProduct();
    // getData();
    fatchProductList();
  }
  /*fetchProduct()async{

  var results= await services.getUser();
  log('yaha tak to tik he 11');
  print(results);
 if(results!=null){
   log('yaha tak b tik he 12');
   getposts.assignAll(results);
   print(results);
 }else{
   print('null');
   log('yaha par error he ');
 }*/

// getData() async{
// try{
//   var data=await UserProvider().getUser();
//   if(data!=null){
//     dataModel.value=data;
//   }
// }catch(e){
//   Get.snackbar('Error', 'Error because connection problem');
// }
//
//   }
  fatchProductList() async {
    // print("tapped $id");
    try {
      isLoading(true);
      var product = await UserProvider.getAvatarsData();
      print(product);
      if (product is HomeOfferListModelClass) {
        print("data not null");
        modal.value = product as HomeOfferListModelClass;
        update();
      } else {
        isEmptyData(true);
      }
    } finally {
      isLoading(false);
    }
  }
  @override
  void onReady() {
    super.onReady();
  }
}

