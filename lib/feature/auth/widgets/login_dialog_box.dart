import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/material/custom_button.dart';

class LoginDialogBox extends StatelessWidget {
  final String title;
  final List<String> data;
  final bool isPasswordInstruction;

  const LoginDialogBox({
    super.key,
    required this.title,
    required this.data,
     this.isPasswordInstruction = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.h),
      contentPadding: EdgeInsets.all(15.sp),
      backgroundColor: Colors.white,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8.sp)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(5.h),
          // heading or title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () => context.pop(context),
                child: SvgPicture.asset('assets/icons/cancel.svg'),
              ),
            ],
          ),
          Gap(5.h),

          // divider
          Divider(color: kSecondaryGrey),
          Gap(5.h),
          // content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(data.length, (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Text(
                  "${isPasswordInstruction ? "": "${index+1} ."} ${data [index]}",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }),
          ),

          Gap(20.h),

          CustomButton(
            text: 'Ok',
            isLoading: false,
            backgroundColor: kBrandColor,
            onTap: () => context.pop(),
          ),
          Gap(5.h),
        ],
      ),
    );
  }
}
