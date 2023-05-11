import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/utils/media_query_values.dart';
class TextShimmerShape extends StatelessWidget {
  const TextShimmerShape({Key? key,  this.width}) : super(key: key);
  final double? width;
  @override
  Widget build(BuildContext context) {
    return   Card(

        elevation: 3.0,

        child: SizedBox(height: 10.h,width:width?? context.width,));
  }}