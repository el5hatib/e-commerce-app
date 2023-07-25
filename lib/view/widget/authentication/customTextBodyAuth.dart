import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String body ;
  const CustomTextBodyAuth({
    super.key, required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        body.tr,
        textAlign: TextAlign.center,
      ),
    );
  }
}