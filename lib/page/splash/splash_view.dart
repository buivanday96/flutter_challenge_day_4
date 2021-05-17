import 'package:flutter/material.dart';
import 'package:flutter_challenges_fourth/page/splash/splash_controller.dart';
import 'package:flutter_challenges_fourth/setting/app_color.dart';
import 'package:flutter_challenges_fourth/widget/button.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    Widget _button = Column(
      children: [
        MyButton.elevated(
          width: 286.w,
          height: 78.h,
          borderRadius: 40.r,
          elevation: 10,
          backgroundColor: AppColor.accentColor,
          text: 'Sign Up',
          textStyle: GoogleFonts.barlow(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 40.sp,
          ),
          padding: EdgeInsets.only(
            bottom: 8.h,
          ),
          onTap: () {},
        ),
        SizedBox(
          height: 40.h,
        ),
        MyButton.elevated(
          width: 286.w,
          height: 78.h,
          borderRadius: 40.r,
          elevation: 10,
          backgroundColor: AppColor.primaryColor,
          onTap: controller.gotoHome,
          text: 'Login',
          textStyle: GoogleFonts.barlow(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 40.sp,
          ),
          padding: EdgeInsets.only(
            bottom: 8.h,
          ),
        ),
        SizedBox(
          height: 236.h,
        ),
      ],
    );

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 463.h,
            ),
            Image.asset(
              'assets/ic_lock.png',
              width: 186.w,
              height: 240.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'splash'.toUpperCase(),
              style: GoogleFonts.luckiestGuy(
                fontSize: 70.sp,
                color: Colors.white,
                height: 0.9,
              ),
            ),
            Text(
              'gym'.toUpperCase(),
              style: GoogleFonts.luckiestGuy(
                fontSize: 70.sp,
                color: AppColor.accentColor,
                height: 0.9,
              ),
            ),
            Text(
              'Get in shape quickly',
              softWrap: true,
              style: GoogleFonts.barlowSemiCondensed(
                fontSize: 28.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.25.sp,
                wordSpacing: 1.sp,
                height: 0.7,
              ),
            ),
            Spacer(),
            _button,
          ],
        ),
      ),
    );
  }
}
