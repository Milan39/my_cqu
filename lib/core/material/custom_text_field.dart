import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cqu/core/constant.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String name;
  final InputDecoration decoration;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Function(String?)? onChanged;
  final Function()? onEditCompleted;
  final FocusNode? focusNode;
  final bool obscureText;
  final List<TextInputFormatter> inputFormatters;
  final bool hideText;
  final bool hasAstric;

  const CustomTextField({
    super.key,
    this.title = "",
    required this.name,
    required this.decoration,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.onEditCompleted,
    this.focusNode,
    this.obscureText = false,
    this.inputFormatters = const [],
    this.hideText = false,
    this.hasAstric = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: RichText(
            text: TextSpan(
              text: title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: hasAstric ? " *" : "",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: kErrorColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        FormBuilderTextField(
          name: name,
          focusNode: focusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.white),
          inputFormatters: inputFormatters,
          cursorColor: Colors.white,
          keyboardType: keyboardType,
          decoration: decoration,
          onChanged: onChanged,
          onEditingComplete: onEditCompleted,
          obscureText: obscureText,
          validator: (value) {
            final trimValue = value?.trim();
            return validator?.call(trimValue);
          },
        ),
      ],
    );
  }
}
