import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/entities/important_link_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class ChecklistCard extends StatelessWidget {
  final LinkCardDetail cardDetail;

  const ChecklistCard({
    super.key,
    required this.cardDetail
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
            child: cardDetail.isSvg? SvgPicture.asset(cardDetail.imagePath): Image.asset(cardDetail.imagePath, fit: BoxFit.contain),
          ),
          Gap(5.h),
          Text(
            cardDetail.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: kBackgroundColor,
            ),
          ),
          Gap(5.h),

          Text(
            cardDetail.type,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: () {
              launchUrl(Uri.parse(cardDetail.link));
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
