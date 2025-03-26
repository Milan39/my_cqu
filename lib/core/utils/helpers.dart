import 'package:animate_do/animate_do.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:my_cqu/core/constant.dart';

class Helpers {
  static showErrorToastMessage(
    BuildContext context, {
    required String errorMessageTitle,
    String? errorMessageSubtitle,
  }) {
    FToast fToast = FToast();
    fToast.init(context);
    return fToast.showToast(
        child: Animate(
          effects: const [
            SlideEffect(
              delay: Duration(milliseconds: 1500),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              begin: Offset.zero,
              end: Offset(-1, 0),
            )
          ],
          child: FadeInDown(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0.r, horizontal: 5.r),
                decoration: BoxDecoration(
                    // color: kSecondaryBlack,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      // color: kPrimaryError,
                    )),
                alignment: Alignment.center,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 15.r,
                    // backgroundColor: kPrimaryRed,
                    child: const Icon(Icons.close_rounded),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      fToast.removeCustomToast();
                    },
                    child: const Icon(Icons.close),
                  ),
                  horizontalTitleGap: 15.r,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        errorMessageTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Gap(2.r),
                      errorMessageSubtitle == null
                          ? const SizedBox.shrink()
                          : Text(
                              errorMessageSubtitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                              overflow: TextOverflow.visible,
                              maxLines: 2,
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        isDismissible: true,
        fadeDuration: Durations.short4,
        positionedToastBuilder: (context, child, gravity) {
          return Positioned(
            right: 20.h,
            left: 20.w,
            top: 10.h,
            child: child,
          );
        });
  }

  static showSuccessToastMessage(
    BuildContext context, {
    required String successMessageTitle,
    String? successMessageSubTitle,
  }) {
    FToast fToast = FToast();
    fToast.init(context);
    return fToast.showToast(
        child: Animate(
          effects: const [
            SlideEffect(
              delay: Duration(milliseconds: 1500),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              begin: Offset.zero,
              end: Offset(-1, 0),
            )
          ],
          child: FadeInDown(
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0.r, horizontal: 5.r),
                decoration: BoxDecoration(
                  // color: kSecondaryBlack,
                  borderRadius: BorderRadius.circular(8.r),
                  // border: Border.all(color: kSecondarySuccessColor),
                ),
                alignment: Alignment.center,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 12.r,
                    // backgroundColor: kSecondarySuccessColor,
                    child: Icon(
                      Icons.done_rounded,
                      size: 20.h,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      fToast.removeCustomToast();
                    },
                    child: const Icon(Icons.close),
                  ),
                  horizontalTitleGap: 15.r,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        successMessageTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Gap(2.r),
                      successMessageSubTitle == null
                          ? const SizedBox.shrink()
                          : Text(
                              successMessageSubTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                              overflow: TextOverflow.visible,
                              maxLines: 2,
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        isDismissible: true,
        fadeDuration: Durations.short4,
        positionedToastBuilder: (context, child, gravity) {
          return Positioned(
            right: 20.h,
            left: 20.w,
            top: 10.h,
            child: child,
          );
        });
  }

  static handleDioError({required dynamic error}) {
    if (error is DioException) {
      return error.message ?? "An unknown error occurred";
    }
    return "An unknown error occurred";
  }

  static String removeAllHtmlTags(String? htmlText) {
    if(htmlText != null){
      RegExp exp = RegExp(
        r"<[^>]*>",
        multiLine: true,
        caseSensitive: true,
      );

      return htmlText.replaceAll(exp, '');
    }
    return '';

  }
}
