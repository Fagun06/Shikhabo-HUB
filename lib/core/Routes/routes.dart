import 'package:get/get.dart';
import 'package:shikhabohub/feature/auth/view/screen/login.dart';
import 'package:shikhabohub/feature/splash/view/screen/splash.dart';


class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  final List<GetPage> pages = [
    GetPage(
      name: splash, 
      page: () => Splash(),
      
      ),
    GetPage(name: login, page: () => Login()),
  ];
}
