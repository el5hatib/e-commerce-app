import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();

  goToSuccessResetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  @override
  resetPassword() {

  }

  @override
  goToSuccessResetPassword() {
    Get.toNamed(AppRoutes.successResetPassword);
  }

  @override
  void onInit() {
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }


}
