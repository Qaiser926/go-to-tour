import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/utils/shared_preferences_service.dart';

class SplashMiddleware extends GetMiddleware {
  @override
  int get priority => 1;

  bool get isOnBoarding => SharedPreferencesService.getOnBoarding();

  @override
  RouteSettings? redirect(String? route) {
    if (!isOnBoarding) {
      return RouteSettings(name: Routes.SPLASH);
    }
    return null;
  }
}
