import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cqu/core/common/widgets/loading_indicator.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool isLoading;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height;

  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    required this.isLoading,
    required this.backgroundColor,
    this.textColor = Colors.black,
    this.borderRadius = 5,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: backgroundColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
        child: isLoading
            ? const LoadingIndicator()
            : Center(
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
