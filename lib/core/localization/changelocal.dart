import 'package:e_commerce_app/core/constant/apptheme.dart';
import 'package:e_commerce_app/core/service/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLangController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;
  changeLang(languageCode) {
    Locale locale = Locale(languageCode);
    myServices.sharedPreference.setString("lang", languageCode);
    appTheme = languageCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflang = myServices.sharedPreference.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
