import 'package:e_commerce/core/constant/routes_name.dart';
import 'package:e_commerce/core/localization/change_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/language/custom_language_button.dart';

class Language extends GetView<LanguageController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "chooseLang".tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            languageButton(
              languageTitle: "العربية",
              changeLanguage: () {
                controller.changeLang('ar');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            languageButton(
              languageTitle: "English",
              changeLanguage: () {
                controller.changeLang('en');
                Get.toNamed(AppRoutes.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
