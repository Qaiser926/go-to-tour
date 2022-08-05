import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:go_tour/app/modules/home/modelClass/HomeofferListModel.dart';
import 'package:go_tour/app/modules/home/modelClass/homeOfferListModelClass.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'dart:convert' as convert;
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
 final String url='https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd';
 Future<List<HomeOfferListModelClass>?> getUser() async{
 try{
  var response=await http.get(Uri.parse(url))
  .timeout(
   const Duration(seconds: 10,),onTimeout: (){
    throw TimeoutException('connection time out try again');
  }
  );
  // print(response.body);
  if(response.statusCode==200){
   // final json=response.body;
   // List jsonresponse=convert.jsonDecode(json) as List<dynamic>;
   // Map<String, dynamic> map= jsonDecode(json) ;
   // print("IF converting json");

   // final json = "[" + response.body + "]";

   // final json = response.body;
   // List homelist = convert.jsonDecode(json) as List<dynamic> ;
   final json = "[" + response.body + "]";
   List homelist = (jsonDecode(json) as List<dynamic>) ;
   // List homelist = (jsonDecode(json) as List<dynamic>) ;
   return homelist.map((e) => new HomeOfferListModelClass.fromJson(e)).toList();

    // return Response(true, msg: "OK", result: local[0]);
  }else{
   throw Exception('We were not able to successfully download the json data.');
  }
  return null;
 }on TimeoutException catch(_){
  print('response time out');
 }
 }
}