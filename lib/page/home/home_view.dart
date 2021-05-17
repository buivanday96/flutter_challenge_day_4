import 'package:flutter/material.dart';
import 'package:flutter_challenges_fourth/page/home/home_controller.dart';
import 'package:flutter_challenges_fourth/setting/app_color.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Widget hello = Padding(
      padding: EdgeInsets.only(left: 68.w),
      child: Text(
        'Hello',
        style: GoogleFonts.barlow(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 34.sp,
        ),
      ),
    );

    Widget name = Padding(
      padding: EdgeInsets.only(left: 68.w),
      child: Text(
        'Amanda',
        style: GoogleFonts.barlow(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 40.sp,
        ),
      ),
    );

    Widget question = Padding(
      padding: EdgeInsets.only(left: 68.w, top: 47.h),
      child: Text(
        'How are you doing?',
        style: GoogleFonts.barlowSemiCondensed(
          fontWeight: FontWeight.w700,
          color: AppColor.accentColor,
          fontSize: 50.sp,
          letterSpacing: 1.9.sp,
          wordSpacing: 2.sp,
        ),
      ),
    );

    Widget title = Padding(
      padding: EdgeInsets.only(left: 68.w, top: 70.h, bottom: 36.h),
      child: Text(
        'Daily activity',
        style: GoogleFonts.barlow(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 40.sp,
        ),
      ),
    );

    Widget step = Padding(
      padding: EdgeInsets.only(left: 60.w, right: 60.w),
      child: Container(
        width: 595.w,
        height: 182.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.r),
        ),
      ),
    );

    Widget bpm = Padding(
      padding: EdgeInsets.only(left: 60.w, right: 60.w),
      child: Container(
        width: 595.w,
        height: 182.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.r),
        ),
      ),
    );

    Widget calories = Padding(
      padding: EdgeInsets.only(left: 60.w, right: 60.w),
      child: Container(
        width: 595.w,
        height: 182.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.r),
        ),
      ),
    );

    return WillPopScope(
      onWillPop: () async => true,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_home.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 123.h,
                ),
                hello,
                name,
                question,
                title,
                SizedBox(
                  height: 34.h,
                ),
                step,
                SizedBox(
                  height: 34.h,
                ),
                boxActivity(),
                SizedBox(
                  height: 34.h,
                ),
                calories,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget boxActivity() {
    Widget number = Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '90',
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w500,
            fontSize: 92.sp,
            height: 1.25,
            color: AppColor.accentColor,
          ),
        ),
        Text(
          'bpm',
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w400,
            fontSize: 29.sp,
            height: 0.2,
            color: Color(0xffBABEBF),
          ),
        ),
      ],
    );
    return Padding(
      padding: EdgeInsets.only(left: 60.w, right: 60.w),
      child: Container(
        width: 595.w,
        height: 182.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          children: [
            Container(
              width: 260.w,
              child: number,
            ),
          ],
        ),
      ),
    );
  }
}
