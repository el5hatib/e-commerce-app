import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes_name.dart';

abstract class RegisterOTPController extends GetxController {
  checkOTP();

  goToSuccessRegister();
}

class RegisterOTPControllerImpl extends RegisterOTPController {
  late String otpCode ;
  @override
  checkOTP() {

  }

  @override
  goToSuccessRegister() {
    Get.toNamed(AppRoutes.successCreateNewAccount);
  }

  @override
  void onInit() {
    super.onInit();
  }

}
