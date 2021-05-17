import 'package:get/get.dart';

import '../../app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void gotoHome() {
    Get.toNamed(Routes.HOME);
  }
}
