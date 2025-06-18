import 'package:get/get.dart';

import '../../../core/routes/routes.dart';

class SplashController extends GetxController {

  RxBool isLogin = false.obs;
  @override
  void onInit() {
    super.onInit();
    initSplash();
  }

  Future<void> initSplash() async {
    await Future.delayed(Duration(seconds: 5));
    if(isLogin.value == true){
        // TODO: Add Home Screen
    }else{
       Get.toNamed(Routes.login);
    }
   
  }
}
