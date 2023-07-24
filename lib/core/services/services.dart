import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyServices extends GetxService {
  late SharedPreferences _prefs;
  Future<MyServices> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }
}
initServices() async {
  await Get.putAsync(() => MyServices().init());
}
