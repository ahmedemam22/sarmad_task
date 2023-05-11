import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/constant/colors.dart';
import 'package:sarmad_task/utils/bottom_sheet.dart';

import '../../screens/search/search_shapes/filter_shapes/filter_shape.dart';



class FilterButtonShape extends StatelessWidget {
  const FilterButtonShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10.w)
      ),
      child: Center(
        child: IconButton(
          onPressed: ()=>BottomSheetShape(const FilterShape()).build(context),
          icon: const Icon(Icons.filter_list_outlined,color: white,),
        ),
      ),
    );
  }
}
