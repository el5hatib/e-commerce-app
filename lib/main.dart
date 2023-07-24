import 'package:e_commerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme:  TextTheme(
          titleLarge:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
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
      home: const Onboarding(),
      routes: routes,
    );
  }
}

