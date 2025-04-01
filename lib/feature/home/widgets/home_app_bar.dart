import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HomeAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      surfaceTintColor: Colors.white,
      elevation: 0.0,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        SvgPicture.asset('assets/icons/search.svg'),
        Gap(10.w),
        CircleAvatar(
          backgroundColor: kBrandColor,
          maxRadius: 15.r,
          child: Text(
            "MT",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Gap(10.w),
      ],
    );
  }
}
