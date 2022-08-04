import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/utils/shared_preferences_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int get priority => 2;

  bool get isAuthenticate =>
      SharedPreferencesService.getAccessToken.isEmpty == true ? true : false;

  @override
  RouteSettings? redirect(String? route) {
    // if (isAuthenticate == true) {
    //   return RouteSettings(name: Routes.LOGIN);
    // }
    if (isAuthenticate == false) {
      return RouteSettings(name: Routes.HOME);
    }
    return null;
  }
}
