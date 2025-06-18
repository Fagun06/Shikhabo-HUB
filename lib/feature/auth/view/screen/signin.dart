import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shikhabohub/core/global_widget/custom_botton.dart';
import 'package:shikhabohub/core/global_widget/custom_text.dart';
import 'package:shikhabohub/core/global_widget/customtextfield.dart';
import 'package:shikhabohub/feature/auth/view/screen/signup.dart';
import 'package:shikhabohub/feature/home/view/screen/homescreen.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 100.h),
                          CustomTextView(
                            text: "Log in Your \n Account",
                            size: 40.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF262626),
                          ),
                          30.verticalSpace,
                          CustomTextfield(hintText: "Phone number"),
                          30.verticalSpace,
                          CustomTextfield(hintText: "Password"),
                          30.verticalSpace,
                          CustomButton(
                            text: "Sign up",
                            textColor: Colors.white,
                            onPressed: () {
                              Get.to(() => Homescreen());
                            },
                          ),
                          10.verticalSpace,
                          InkWell(
                            onTap: () {
                              Get.to(() => Homescreen());
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: CustomTextView(
                                text: "Forgot the password?",
                                size: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF2FB3B3),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h, top: 40.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextView(
                              text: "Already have an account?",
                              size: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF8C8C8C),
                            ),
                            5.horizontalSpace,
                            InkWell(
                              onTap: () {
                                Get.to(()=>Signup());
                              },
                              child: CustomTextView(
                                text: "Sign up",
                                size: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF2FB3B3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
