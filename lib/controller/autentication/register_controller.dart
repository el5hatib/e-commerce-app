import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class RegisterController extends GetxController {
  register();

  goToLogin();
}

class RegisterControllerImpl extends RegisterController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  @override
  register() {

  }

  @override
  goToLogin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }


}
