import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Home Page %s',
        },
        'ar': {
          'title': 'الصفحة الرئيسيه %s',
        },
      };
}