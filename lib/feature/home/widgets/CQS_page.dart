import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/material/custom_button.dart';
import 'package:my_cqu/core/utils/date_converter.dart';
import 'package:my_cqu/feature/home/cubit/home_screen_cubit/home_screen_cubit.dart';

class CQSPage extends StatelessWidget {
  const CQSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
  builder: (context, state) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      children: [
        // notice board card
        Container(
          padding: EdgeInsets.all(15.sp),
          height: 150.h,
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
              Gap(10.h),
              //   notice action button,
              CustomButton(
                height: 40,
                text: "Book Unilife Week",
                isLoading: false,
                backgroundColor: kBrandColor,
                borderRadius: 50,
                textColor: kBackgroundColor,
              ),
            ],
          ),
        ),

        // daily notification card
        Gap(10.h),
        Text(
          'On ${formatDateTime(DateTime.now(), 'MMMM d, yyyy')}',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),

        Gap(10.h),

        GridView.count(
          crossAxisSpacing: 10.w,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 2/1,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 10.h,
          children: List.generate(state.homeData.length, (index) {
            var data = state.homeData[index];
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 15.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 6,
                    spreadRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: kBackgroundColor,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/${data.imagePath}'),
                ],
              ),
            );
          }),
        ),
      ],
    );
  },
);
  }
}
