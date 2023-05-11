import 'package:flutter/material.dart';
import 'package:sarmad_task/constant/assets_manager.dart';
import 'package:sarmad_task/constant/text_styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoItemFoundShape extends StatelessWidget {
  const NoItemFoundShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.only(top: 30.h),
        child: Column(
          children: [
            Image.asset(ImageAssets.searchImg),
            Text('No Item Yet',style: TextStylesManager.mediumStyle(fontSize: 30.sp),)
          ],
        ),
      ),
    );
  }
}
