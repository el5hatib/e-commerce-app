import 'package:flutter/material.dart';
class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: const Center(
          child:  Text('Success Reset Password'),
        ),
      ),
    );
  }
}
