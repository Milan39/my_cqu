import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class ChecklistCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String type;
  final String link;

  const ChecklistCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.type,
    this.link = "https://moodle.cqu.edu.au/course/view.php?id=86559",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(0, 0),
            spreadRadius: -1,
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          Gap(5.h),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: kBackgroundColor,
            ),
          ),
          Gap(5.h),

          Text(
            type,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: () {
              launchUrl(Uri.parse(link));
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
            ),
            child: Text(
              "Learn More",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBackgroundColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
