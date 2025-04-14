import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/widgets/checklist_card.dart';

class ChecklistPage extends StatelessWidget {
  const ChecklistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "Find all the advice you need to complete your \nchecklist",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: kBackgroundColor,
          ),
        ),
        Gap(15.h),
        ChecklistCard(
          imagePath: 'assets/images/image1.png',
          title: "Foundation of Academic Integrity",
          type: "Article",
        ),

        ChecklistCard(
          imagePath: 'assets/images/image2.png',
          title: "Academic Integrity",
          type: "Article",
        ),

        ChecklistCard(
          imagePath: 'assets/images/image3.png',
          title: "Help With Nominating Your Exam Centre",
          type: "Article",
        ),
      ],
    );
  }
}
