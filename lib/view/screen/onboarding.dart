import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : Container(
        padding: const EdgeInsets.all(10),
        child: const Text("Onboarding Screen"),
      ),
    );
  }
}
