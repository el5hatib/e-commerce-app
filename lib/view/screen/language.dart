import 'package:flutter/material.dart';
import '../widget/language/custom_language_button.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Your Preferred Language",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            languageButton(
              languageTitle: "Arabic",
              changeLanguage: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            languageButton(
              languageTitle: "English",
              changeLanguage: () {},
            ),
          ],
        ),
      ),
    );
  }
}
