import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/material/custom_button.dart';

class NoticeBoardCard extends StatelessWidget {
  const NoticeBoardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(15.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kSecondaryBlue,
        borderRadius: BorderRadius.circular(8.sp),
        image: DecorationImage(
          image: AssetImage('assets/images/home_banner_background.png'),
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //   title
          Text(
            "UNILIFE WEEK",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

          //   date with notice info
          Text(
            "24-28 march us Unilife Week!",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Gap(15.h),
          //   notice action button,
          CustomButton(
            height: 50,
            text: "Book Unilife Week",
            isLoading: false,
            backgroundColor: kBrandColor,
            borderRadius: 50,
            textColor: kBackgroundColor,
          ),
        ],
      ),
    );
  }
}
