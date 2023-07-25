import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'chooseLang': 'Choose Your Preferred Language %s',
        },
        'ar': {
          'chooseLang': 'أختر لغتك المفضله ',
        },
      };
}