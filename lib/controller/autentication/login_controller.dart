import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class LoginController extends GetxController {
  login();

  goToRegister();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  login() {}

  @override
  goToRegister() {
    Get.toNamed(AppRoutes.register);
  }
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
