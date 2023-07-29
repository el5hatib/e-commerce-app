import 'package:e_commerce/core/constant/routes_name.dart';
import 'package:e_commerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'view/screen/authentication/login.dart';
import 'view/screen/authentication/register.dart';
import 'view/screen/authentication/forgotPassword.dart';
import 'view/screen/authentication/resetPassword.dart';
import 'view/screen/authentication/otp.dart';
import 'view/screen/authentication/success_reset_password.dart';
import 'view/screen/authentication/success_create_new_account.dart';
import 'view/screen/authentication/check_email.dart';
import 'view/screen/authentication/register_otp.dart';
Map<String,Widget Function (BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboarding: (context) => const Onboarding(),
  AppRoutes.register: (context) => const Register(),
  AppRoutes.forgotPassword: (context) => const ForgetPassword(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.otp: (context) => const OTP(),
  AppRoutes.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoutes.successCreateNewAccount: (context) => const SuccessCreateNewAccount(),
  AppRoutes.checkEmail: (context) => const CheckEmail(),
  AppRoutes.registerOTP: (context) => const RegisterOTP(),

};
