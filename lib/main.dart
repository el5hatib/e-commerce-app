import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/core/localization/change_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';
import 'view/screen/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    LanguageController controller =  Get.put(LanguageController());
    return GetMaterialApp(
      translations: MyTranslations(),
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      locale: controller.language,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme:  TextTheme(
          titleLarge:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColor.black,
          ),
          titleMedium:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: AppColor.black,
          ),
          bodyLarge: TextStyle(
            height: 2,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColor.grey,
          ),
        ),

      ),
      home: const Language(),
      routes: routes,
    );
  }
}

