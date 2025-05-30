import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shikhabohub/core/binding/binding.dart';
import 'package:shikhabohub/core/routes/routes.dart';
import 'package:shikhabohub/feature/splash/view/screen/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          navigatorKey: Get.key,
          title: 'Velozaje',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          getPages: Routes().pages,
          initialBinding: AppBinding(),
          initialRoute: Routes.splash,
         home: Splash(),
        );
      },
    );
  }
}
