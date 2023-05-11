import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/colors.dart';
import '../../constant/fonts_manager.dart';



ThemeData appTheme() {
return ThemeData(
fontFamily: FontFamilyManager.fontFamily,
scaffoldBackgroundColor: white,
primaryColor: primaryColor,
useMaterial3: true,
colorScheme: ColorScheme.light(primary: blue),

textTheme: TextTheme(bodyText2: TextStyle(fontSize: 20.sp)),
);}