import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingIndicator extends StatelessWidget {
  final Color indicatorColor;

  const LoadingIndicator({
    super.key,
    this.indicatorColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      color: indicatorColor,
      radius: 10.r,
    );
  }
}
