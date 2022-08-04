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

  //
  // final String url2 = 'https://randomuser.me/api/?results=10';
  // final String url = 'https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd';
  //
  // // Future<List<dynamic>> getUser() async {
  // //   // final response = await get('https://randomuser.me/api/?results=10');
  // //   Response response = await get(
  // //       (url),
  // //   );
  // //   print(response.body);
  // //   if (response.status.hasError) {
  // //     // log('yaha par b error he ');
  // //     return Future.error(response.statusText.toString());
  // //
  // //   } else {
  // //     log('yaha tak to tik he ');
  // //     return response.body["modules"];
  // //     // return response.body['results'];
  // //     // return response.body['payment_gateways'];
  // //   }
  // // }
  //
  //
  // // fianl String url='https://randomuser.me/api/?results=10';
  //
  // // Future<dynamic> getUser() async {
  // //   // http.Response response =
  // //       // await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
  // //
  // // //
  // //   http.Response response = await http.get(Uri.parse(
  // //       'https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd'));
  // //   print(response.body);
  // //   var data = jsonDecode(response.body);
  // //   if (response.statusCode == 200) {
  // //     // return HomeOfferListModelClass.fromJson(data);
  // //   } else {
  // //     // return HomeOfferListModelClass.fromJson(data);
  // //   }
  // //   final responseBody=jsonDecode(response.body) as List;
  // //   final allPostList= responseBody.map((e) => HomeOfferListModelClass.fromJson(e)).toList();
  // //   return allPostList;
  // // }
  //
  //
  // // List<HomeOfferListModelClass> _postList =<HomeOfferListModelClass>[].obs;
  // HomeofferListModel? listData;
  // var isDataLoading=false.obs;
  // // Future<dynamic> getUser() async {
  // //   http.Response response = await http.get(Uri.parse(url2));
  // //   // List listData;
  // //   // var extraData=json.decode(response.body);
  // //   var data=jsonDecode(response.body);
  // //   print(response.body);
  // //   // listData=extraData['featured_hotels'];
  // //   // print(listData[0]['name']);
  // //   if (response.statusCode == 200) {
  // //     return HomeofferListModel.fromJson(data);
  // //   } else {
  // //     return HomeofferListModel.fromJson(data);
  // //   }
  // //   // return listData;
  // // }
  // Future getUser() async{
  //
  //   try{
  //     isDataLoading(true);
  //     http.Response response=await http.get(Uri.parse(url2));
  //
  //     if(response.statusCode==200){
  //       var results=jsonDecode(response.body);
  //       listData= HomeofferListModel.fromJson(results);
  //     }else{
  //
  //     }
  //   }catch(e){
  //     print("Error whitel getting data : $e");
  //   }finally{
  //     isDataLoading(false);
  //   }


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
    // }
    // void fetchProduct() async{
    // var isLoading(true);
    // var product=await UserProvider().getUser();
    // if(product!=null){
    //   productList.assignAll(product);
    // }
    // }
  }
  fetchProduct()async{

  var results= await services.getUser();
 if(results!=null){
   getposts.assignAll(results);
 }else{
   print('null');
 }
  }
  @override
  void onReady() {
    super.onReady();
  }
}

