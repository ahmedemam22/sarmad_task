import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetShape {
  final Widget shape;

  BottomSheetShape(this.shape);

  build(BuildContext context) {
    return showModalBottomSheet(
      isDismissible: false,

        isScrollControlled: true,

        constraints: BoxConstraints(minHeight: 100.w),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.w))),
        context: context,
        builder: (context) {
          return shape;
        });
  }
}