import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';
import 'package:my_cqu/core/material/custom_text_field.dart';
import 'package:my_cqu/core/material/field_decoration.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/icons/logo.svg'),
              Gap(30.h),
              Text(
                "Login",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                "Sign in with your CQUni Username or email \naddress",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 13.sp,
                  color: kSecondaryGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(30.h),
              CustomTextField(
                name: 'email',
                title: "Email",
                hasAstric: true,
                decoration: textFieldDecoration(
                  radius: 60.sp,
                  hintText: 'Your username or email address',
                ),
              ),
              Gap(15.h),
              CustomTextField(
                name: 'password',
                title: "Password",
                hasAstric: true,
                decoration: passwordFieldDecoration(
                  suffixIcon: Icon(Icons.visibility_off, color: Colors.white,),
                  radius: 60.sp,
                  hintText: 'Your password',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
