import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
    body : Container(
      margin: const EdgeInsets.all(20),
      child: const Center(
        child: Text('Login'),
      ),
    ),
    );
  }
}
