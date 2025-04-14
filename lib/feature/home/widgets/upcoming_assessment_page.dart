import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/utils/date_converter.dart';
import 'package:my_cqu/feature/home/widgets/notice_board_card.dart';

class UpcomingAssessmentPage extends StatelessWidget {
  const UpcomingAssessmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NoticeBoardCard(),
        // daily notification card
        Gap(15.h),
        Text(
          'On ${formatDateTime(DateTime.now(), 'MMMM d, yyyy')}',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),

        Gap(15.h),

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBrandColor,
            borderRadius: BorderRadius.circular(8.sp),
          ),
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBackgroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quiz",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Due 7:40pm (NT)",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10.h),
              Text(
                'Week Quiz 1 Conditionals (6%)',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: kBackgroundColor,
                ),
              ),
              Text(
                'COIT20245',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: kBackgroundColor,
                ),
              ),
              Text(
                'Please check the opening time for your quiz',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: kBackgroundColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
