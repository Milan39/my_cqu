import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

InputDecoration baseFieldDecoration({
  required String hintText,
  Widget? prefixIcon,
  Widget? suffixIcon,
  double radius = 5,
  Color borderColor = Colors.white,
  Color hintTextColor = Colors.grey,
}) {
  BorderRadius borderRadius = BorderRadius.circular(radius.r);
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: borderRadius,
    borderSide: BorderSide(color: borderColor, width: 0.05),
  );
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 10.r),
    hintText: hintText,
    errorMaxLines: 2,
    filled: true,
    fillColor: Colors.transparent,
    errorStyle: GoogleFonts.roboto(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 1,
      color: Colors.red,
    ),
    hintStyle: GoogleFonts.roboto(
      fontSize: 12.sp,
      letterSpacing: 1.5,
      color: hintTextColor,
      fontWeight: FontWeight.w400,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: kSecondaryGrey),
    ),
    border: outlineInputBorder,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}

InputDecoration textFieldDecoration({
  required String hintText,
  double radius = 5,
  Color hintTextColor = Colors.grey,
}) {
  return baseFieldDecoration(
      hintText: hintText,
      radius: radius,
      hintTextColor: hintTextColor
  );
}

InputDecoration passwordFieldDecoration({
  required String hintText,
  required Widget suffixIcon,
  double radius = 5,
}) {
  return baseFieldDecoration(
    hintText: hintText,
    suffixIcon: suffixIcon,
    radius: radius,
  );
}

// BoxDecoration boxDecoration(BuildContext context) {
//   return BoxDecoration(
//     color: kSecondaryBlack,
//     borderRadius: BorderRadius.circular(10.r),
//     boxShadow: Theme.of(context).brightness == Brightness.dark
//         ? []
//         : [
//       BoxShadow(
//         color: Colors.grey.withValues(alpha:  0.3),
//         blurRadius: 8.0,
//         offset: const Offset(0, 0),
//         spreadRadius: 3,
//       )
//     ],
//   );
// }
