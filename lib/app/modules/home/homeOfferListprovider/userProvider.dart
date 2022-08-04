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

class UserProvider extends GetConnect {
  final String url2 = 'https://randomuser.me/api/?results=10';
  final String url = 'https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd';

  // Future<List<dynamic>> getUser() async {
  //   // final response = await get('https://randomuser.me/api/?results=10');
  //   Response response = await get(
  //       (url),
  //   );
  //   print(response.body);
  //   if (response.status.hasError) {
  //     // log('yaha par b error he ');
  //     return Future.error(response.statusText.toString());
  //
  //   } else {
  //     log('yaha tak to tik he ');
  //     return response.body["modules"];
  //     // return response.body['results'];
  //     // return response.body['payment_gateways'];
  //   }
  // }


  // fianl String url='https://randomuser.me/api/?results=10';

  // Future<dynamic> getUser() async {
  //   // http.Response response =
  //       // await http.get(Uri.parse('https://randomuser.me/api/?results=10'));
  //
  // //
  //   http.Response response = await http.get(Uri.parse(
  //       'https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd'));
  //   print(response.body);
  //   var data = jsonDecode(response.body);
  //   if (response.statusCode == 200) {
  //     // return HomeOfferListModelClass.fromJson(data);
  //   } else {
  //     // return HomeOfferListModelClass.fromJson(data);
  //   }
  //   final responseBody=jsonDecode(response.body) as List;
  //   final allPostList= responseBody.map((e) => HomeOfferListModelClass.fromJson(e)).toList();
  //   return allPostList;
  // }


  // List<HomeOfferListModelClass> _postList =<HomeOfferListModelClass>[].obs;
  // HomeofferListModel? listData;
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
// Future getUser() async{
//
//    try{
//      isDataLoading(true);
//      http.Response response=await http.get(Uri.parse(url2));
//
//      if(response.statusCode==200){
//      var results=jsonDecode(response.body);
//      listData= HomeofferListModel.fromJson(results);
//    }else{
//
//   }
//    }catch(e){
//      print("Error whitel getting data : $e");
//    }finally{
//      isDataLoading(false);
//    }
// }

// }
*/
/*class ApiServices{
  static var client=http.Client();
   Future<dynamic> fetchProduct() async{
    var repsonse= await client.get(Uri.parse(
        'https://randomuser.me/api/?results=10'
    ));
    List listData;
    var extraData=json.decode(repsonse.body);
    // var data=jsonDecode(response.body);
    print(repsonse.body);
    // listData=extraData['featured_hotels'];
    listData=extraData['results'];
    var jsonString=repsonse.body;
    if(repsonse.statusCode==200){
      return HomeofferListModel.fromJson(jsonString);
    }
    else{
      // return homeOfferListModelClassToJson(jsonString);
    }
    return listData;
  }*//*

}*/

class UserProvider {
 // var response=
 Future<List<HomeOfferListModelClass>?> getUser() async{
 try{
  var response=await http.get(Uri.parse('https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd'))
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

   final json = "[" + response.body + "]";
   List homelist = (jsonDecode(json) as List<dynamic>) ;
   return homelist.map((e) => new HomeOfferListModelClass.fromJson(e)).toList();

    // return Response(true, msg: "OK", result: local[0]);
  }else{

  }
  return null;
 }on TimeoutException catch(_){
  print('response time out');
 }
 }
}