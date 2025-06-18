import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shikhabohub/core/utils/iconPath.dart';
import 'package:shikhabohub/feature/splash/controller/splashcontroller.dart';

class Splash extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2FB3B3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 3),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Image.asset(
                IconPath.logo,
                height: 150.h,
                width: 150.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Spacer(flex: 2),
          Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: SpinKitWanderingCubes	( // You can use any spinkit style
              color: Colors.white,
              size: 40.sp,
            ),
          ),
        ],
      ),
    );
  }
}
