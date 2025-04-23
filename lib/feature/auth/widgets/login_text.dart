import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginText extends StatelessWidget {
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final String text;
  final Color? decorationColor;
  final TextDecoration? textDecoration;
  final Function()? onTap;

  const LoginText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
    this.textColor = Colors.white,
    this.decorationColor,
    this.textDecoration,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: textColor,
          decorationColor: decorationColor,
          decoration: textDecoration,
        ),
      ),
    );
  }
}
