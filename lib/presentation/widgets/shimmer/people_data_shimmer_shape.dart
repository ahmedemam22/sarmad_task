import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeopleDataShimmerShape extends StatelessWidget {
  const PeopleDataShimmerShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,

          child:
          Card(

            elevation: 3.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.w)
                )),

              child:SizedBox(
                height: 200.h,
              )
              )



      ),
    );



  }}