import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/colors.dart';
import '../../../constant/text_styles_manager.dart';

class RoundedButtonShape extends StatelessWidget {
  const RoundedButtonShape({Key? key, required this.title,required this.onTap,}) : super(key: key);
  final String title;
  final  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      onPressed: onTap,
      child: Center(child: Text(title,style: TextStylesManager.mediumStyle(fontSize: 25.sp,color: white) ,)),
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        maximumSize: Size(200.w,50.h),

        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(10.w), // <-- Radius
        ),
      ),
    );
  }
}