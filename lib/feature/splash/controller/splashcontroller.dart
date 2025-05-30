import 'package:get/get.dart';

import '../../../core/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(Routes.login);
    });
  }
}
