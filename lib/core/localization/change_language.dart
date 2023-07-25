import 'package:e_commerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  Locale ? language;

  final MyServices _services = Get.find();

  changeLang(String langCode) async {
    Locale locale = Locale(langCode);
    await _services.prefs.setString('lang', langCode);
    Get.updateLocale(locale);
    update();
  }
  @override
  void onInit() {
    var langCode = _services.prefs.getString('lang');
    if (langCode == 'ar'){
      language = const Locale('ar');
    } else if (langCode == 'en') {
      language = const Locale('en');
    }
    else {
      language = Locale (Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
