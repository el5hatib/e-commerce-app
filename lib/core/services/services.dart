import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyServices extends GetxService {
  late SharedPreferences prefs;
  Future<MyServices> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }
}
initServices() async {
  await Get.putAsync(() => MyServices().init());
}
