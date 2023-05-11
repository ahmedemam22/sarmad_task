import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sarmad_task/constant/text_styles_manager.dart';

import '../../../constant/colors.dart';
class TextWithIconShape extends StatelessWidget {
  const TextWithIconShape({Key? key, required this.iconData, required this.title}) : super(key: key);
final IconData iconData;
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        children: [
          Icon(iconData,color: primaryColor,size: 25.w,),
          5.horizontalSpace,
          Flexible(child: Text(title,style: TextStylesManager.regularStyle(fontSize: 18.sp),))
        ],
      ),
    );
  }
}
