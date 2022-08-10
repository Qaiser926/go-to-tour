import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:go_tour/app/modules/home/modelClass/HomeofferListModel.dart';
import 'package:go_tour/app/modules/home/modelClass/homeOfferListModelClass.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'dart:convert' as convert;

import 'package:path_provider/path_provider.dart';
// class UserProvider extends GetConnect {
//   Future<List<dynamic>> getUser() async {
//     // final response=await get('https://randomuser.me/api/?results=10');
//     final response = await get(
//       'https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd',
//     );
//     if (response.status.hasError) {
//       return Future.error(response.statusText.toString());
//     } else {
//       return response.body["modules"];
//       // return response.body['payment_gateways'];
//     }
//   }
// }

/*
  var isDataLoading=false.obs;
  /// original code ye he .
  Future<List<dynamic>> getUser() async {
    http.Response response = await http.get(Uri.parse(url));
    List listData;
    listData=HomeOfferListModelClass() as List;
    // var extraData=json.decode(response.body);
    listData=json.decode(response.body);
    // var data=jsonDecode(response.body);
    // print(response.body);
    // listData=extraData['featured_hotels'];
    // listData=extraData['results'];
    // print(listData[0]['name']);
    if (response.statusCode == 200) {
      // return HomeofferListModel.fromJson(data);
    } else {
      // return HomeofferListModel.fromJson(data);
    }
    return listData;
  }

*/


class UserProvider {
 // var response=
 final String url2="https://randomuser.me/api/?results=10";
 final String url='https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd';




 List<HomeOfferListModelClass> _postList =<HomeOfferListModelClass>[];


 // static Future<HomeOfferListModelClass?> getAvatarsData() async {
  // var headers = {
  //  'Content-Type': 'application/json',
  //  "Authorization":
  //  "${Get.find<storage_controller>().userModel.value.token!}"
  // };
  // var response = await http.get(
  //  Uri.parse("https://pedidoahora.mx/kampus/api/get_avatars"),
  //  // headers: headers,
  // );

 static Future<HomeOfferListModelClass?> getAvatarsData() async {
  var url2=Uri.parse("https://randomuser.me/api/?results=10");
  var url = Uri.parse("https://demotravels.com/api/api/main/app?appKey=phptravels&lang=en&currency=usd");
  var response = await http.get(
   Uri.parse('https://demotravels.com/api/api/main/app?appKey=phptravels&lang=en&currency=usd'),
   // headers: headers,
  );
  // print("htting ===>>>   https://pedidoahora.mx/kampus/api/get_faculty_by_campus?campus_id=$id");
  // print(response.body);

  final requestbody = json.decode(response.body.toString());
  print(requestbody.runtimeType);
  try {
   if (response.body==200) {
    print('yaha tak to tike he ');
    return homeOfferListModelClassFromJson(response.body);
   }else if (response.body.isNotEmpty) {
    print('yaha b tik he pir error kaha he');
    return homeOfferListModelClassFromJson(response.body.toString());
    // return homeOfferListModelClassFromJson(requestbody);
   } else {
    // show_snackBarError(title: "Error", description: "Oops, server is down");
    Get.snackbar('error', 'oop connection error');
    print('yaha par data nhe he ');
    return null;


   }
  }
  on PlatformException catch (e) {
   // print(e);
   // show_snackBarError(title: "Error", description: e.message.toString());
   print('dirct yaha par q ata he');
   Get.snackbar('Error', 'yaha par error he ${e.toString()}');
  }
  catch (e) {
   print('dirct yaha par q ata he');
   print('yaha catch me error he ${e}');
  }
 }
  // http.Response response = await http.get(url);
  // print("ikikikikik");
  // // print(response.body);
  // // print(response.runtimeType);
  //
  // // print(requestbody);
  // // print(requestbody.runtimeType);
  // final requestbody = json.decode(response.body);
  // // _postList.assignAll(requestbody);
  //
  // // print(_postList);
  // final jsonBody=response.body;
  // try {
  // if(response.body.isNotEmpty &&
  //     requestbody["status"].toString() == "200"){
  //   print("kukuku");
  //
  //   try {
  //    homeOfferListModelClassFromJson(jsonBody);
  //    // print(homeOfferListModelClassFromJson.runtimeType);
  //    print('first try tik he');
  //   } catch (e) {
  //    print("first try catch me error he ${e.toString()}");
  //   }
  //   return homeOfferListModelClassFromJson(jsonBody);
  //  } else if (response.body.isNotEmpty) {
  //   return homeOfferListModelClassFromJson(jsonBody);
  //   // return requestbody;
  //  } else {
  //   Get.snackbar('Error', "OOPS! connection down");
  //   return null;
  //  }
  // } on PlatformException catch (e) {
  //  print("platformException me error aya he ${e.toString()}");
  //  Get.snackbar("Error", '${e.message.toString()}');
  // } catch (e) {
  //  print("catch me eror show howa he:: ${e}");
  // }
 }


/*Future<List<HomeOfferListModelClass>?> getUser() async{



 try{
  var response=await http.get(Uri.parse(url))
  .timeout(
   const Duration(seconds: 10,),onTimeout: (){
    throw TimeoutException('connection time out try again');
  }
  );
  // print(response.runtimeType);
  // print(response);

  if(response.statusCode==200){

   final json = "[" + response.body + "]";
   // final jsonvalue =  response.body ;
   // var homelist = convert.jsonDecode(json) as List<dynamic> ;
   // var homelist = convert.json.decode(jsonvalue) as List<String>;
   List homelist = (jsonDecode(json)) ;

   return homelist.map((e) => new HomeOfferListModelClass.fromJson(e)).toList();
  }else{
   throw Exception('We were not able to successfully download the json data.');
  }

 // }on TimeoutException catch(e){
 }catch(e){
  print('response time out: ${e}');
 }
 return null;
 }*/

 // Future<List<TestModelClass>?> getUser() async{
 //  try{
 //   var response=await http.get(Uri.parse(url2))
 //       .timeout(
 //       const Duration(seconds: 10,),onTimeout: (){
 //    throw TimeoutException('connection time out try again');
 //   }
 //   );
 //
 //   // print(response.body);
 //   if(response.statusCode==200){
 //    // final json = "[" + response.body + "]";
 //
 //    // List homelist = convert.jsonDecode(json) as List<dynamic> ;
 //    final json = "[" + response.body + "]";
 //    List homelist = (jsonDecode(json) as List<dynamic>) ;
 //    // List homelist = (jsonDecode(json) as List<dynamic>) ;
 //    return homelist.map((e) => new TestModelClass.fromJson(e)).toList();
 //
 //    // return Response(true, msg: "OK", result: local[0]);
 //   }else{
 //    throw Exception('We were not able to successfully download the json data.');
 //   }
 //   return null;
 //  }on TimeoutException catch(_){
 //   print('response time out');
 //  }
 // }
// }
