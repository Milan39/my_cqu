import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/entities/important_link_entity.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = GoRouterState.of(context).extra as LinkCardDetail;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => context.pop(true),
          child: Container(
            height: 5.h,
            width: 5.w,
            margin: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: kSecondaryBlue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: kBrandColor,
              size: 15.sp,
            ),
          ),
        ),
        actions: [
          Text(
            "Edit",
            style: TextStyle(
              fontSize: 14.sp,
              decorationThickness: 2,
              decoration: TextDecoration.underline,
              color: kSecondaryBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(10.w),
          SvgPicture.asset('assets/icons/notifcation.svg'),
          Gap(20.w),
        ],
      ),
      body: Column(
        children: [
          Divider(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              children: [
                SizedBox(
                  width: double.infinity,
                  child:
                      data.isSvg
                          ? SvgPicture.asset(data.imagePath)
                          : Image.asset(data.imagePath, fit: BoxFit.contain),
                ),
                Gap(10.h),
                Text(
                  data.title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                Gap(2.h),
                Text(
                  data.type,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
                Gap(2.h),
                Text(
                  "Academic integrity is behaviour underpinned by the values of honesty, trust, fairness, respect, responsibility and courage.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
                Gap(10.h),
                Text(
                  """Foundations of Academic Integrity (FAI) training is integral to  CQUniversity’s commitment to academic integrity. We want to ensure that  you understand the ethical behaviour required of you, in particular,  during your assessment tasks. 
                    Each year, for the length of your  time as a student at CQU, you will be required to complete the FAI  training unit, which is also a mandated requirement in the Student Academic Integrity Policy and Procedure. This policy document allows for the restriction of grades until the FAI training unit is completed. 
                All Diploma, Advanced Diploma, Associate Degree, and Higher Education  students must complete the FAI training unit. To be marked as complete,  you must attain 80% or more on the FAI compulsory quiz.""",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
                Divider(),
                Text(
                  "Frequently Asked Questions (FAQ)",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                Gap(10.h),
                Text(
                  """
HOW DO I ACCESS THE FAI TRAINING UNIT?
Visit MyCQU and your checklist will guide you to complete the FAI training unit.  Alternatively, the FAI training unit is available in Moodle under My  Units. 
WHY DO I NEED TO COMPLETE FAI TRAINING?
In  workplace learning and after graduation, students will need to follow  the employer's behavioural and ethical standards. CQU has similar  standards in place, designed to prepare you for success in the  professional setting. One of these standards is called academic  integrity.
Integrity is about personal characteristics such as  trustworthiness, truthfulness and right action. Academic integrity is  the application of these ethical standards to our work as students and  teachers. Academic integrity falls down when we deceive fellow students, staff or the University in order to receive unfair benefits. 
The first step to ensuring academic integrity is completing the FAI  training unit. In this unit, you will learn concrete ways to demonstrate that your academic work is your own, as well as the CQU policies that  spell out how student academic misconduct is addressed.
WHAT DOES THE FAI TRAINING UNIT INVOLVE?
The training consists of informational content, videos, and a final  multiple-choice quiz. Please note to be marked as complete, you need to  attain 80% or more on the FAI compulsory quiz.
HOW LONG WILL IT TAKE ME?
FAI training takes approximately two hours to complete. Some students will take more time, others less.
WHEN WILL I BE ASKED TO COMPLETE THE FAI TRAINING UNIT?
The unit will need to be completed annually on the anniversary of starting  your current course at CQU. The anniversary is not based on the very  start of CQU study, but rather the anniversary of the current course you are studying. In cases where students are studying multiple courses at  once, the applicable anniversary should be the first to occur in the  year.
               """,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
