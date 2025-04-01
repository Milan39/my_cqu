import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/feature/home/entities/link_entity.dart';

class LinkCard extends StatelessWidget {
  final LinkEntity link;
  final Function()? onTap;
  const LinkCard({super.key, required this.link, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              link.title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: kBackgroundColor,
              ),
            ),
            SvgPicture.asset('assets/icons/${link.imagePath}'),
          ],
        ),
      ),
    );
  }
}
