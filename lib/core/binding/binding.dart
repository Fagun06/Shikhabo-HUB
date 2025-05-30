import 'package:get/get.dart';
import 'package:shikhabohub/feature/splash/controller/splashcontroller.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => SplashController());
   
    
  }
}
