import 'package:get/get.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final preferences = Get.find<SharedPreferences>();

  static bool getOnBoarding() {
    final isOnBoarding = preferences.getBool(Strings.isFastLoading) ?? false;
    if (!isOnBoarding) preferences.setBool(Strings.isFastLoading, true);
    return isOnBoarding;
  }

  static Future<void> setAccessToken(String accessToken) async {
    preferences.setString(Strings.accessToken, accessToken);
  }

  static String get getAccessToken =>
      preferences.getString(Strings.accessToken) ?? '';

  static Future<void> logout() async {
    await preferences.clear();
    getOnBoarding();
    Get.offAllNamed(Routes.LOGIN);
  }
}
