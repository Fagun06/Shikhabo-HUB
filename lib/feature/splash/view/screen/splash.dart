import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shikhabohub/core/utils/iconPath.dart';
import 'package:shikhabohub/feature/splash/controller/splashcontroller.dart';



class Splash extends StatelessWidget {

  final SplashController controller = Get.put(SplashController());

   Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(IconPath.logo, height: 100.h, width: 100.w)],
        ),
      ),
    );
  }
}
