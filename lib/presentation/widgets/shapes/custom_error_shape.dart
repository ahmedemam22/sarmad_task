import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/constant/colors.dart';
class CustomErrorShape extends StatelessWidget {


@override
Widget build(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          color: red,
          size: 50.w,
        ),
        10.verticalSpace,
        Text(
          'Error Occurred!',
          style: TextStyle(fontSize: 18.w, fontWeight: FontWeight.bold),
        ),
        10.verticalSpace,
        Text(
          'please check Internet',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.w),
        ),
      ],
    ),
  );
}
}