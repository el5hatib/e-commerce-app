import 'package:e_commerce/core/constant/routes_name.dart';
import 'package:flutter/material.dart';
import 'view/screen/authentication/login.dart';
Map<String,Widget Function (BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
};
