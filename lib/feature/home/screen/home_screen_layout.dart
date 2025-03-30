import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/utils/date_converter.dart';

class HomeScreenLayout extends StatelessWidget {
  const HomeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Scrollable tab bar
          Container(height: 70.h, width: double.infinity, color: kBrandColor),
          Gap(5.h),

          // divider
          Divider(),

          // banner
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            height: 150.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBrandColor,
              borderRadius: BorderRadius.circular(8.sp),
            ),
          ),

          // daily notification card
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.sp),
            child: Text(
              'On ${formatDateTime(DateTime.now(), 'MMMM d, yyyy')}',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ),

          Gap(10.h),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBrandColor,
              borderRadius: BorderRadius.circular(8.sp),
            ),
          ),

        ],
      ),
    );
  }
}
