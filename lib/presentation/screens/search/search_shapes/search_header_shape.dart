import 'package:flutter/material.dart';
import 'package:sarmad_task/constant/colors.dart';
import 'package:sarmad_task/constant/text_styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/presentation/widgets/button_shapes/filter_button_shape.dart';
import 'package:sarmad_task/presentation/widgets/text_field_shapes/search_bar_shape.dart';

class SearchHeaderShape extends StatelessWidget {
  const SearchHeaderShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello,\nFind Your Search Results',style: TextStylesManager.semiBoldStyle(fontSize: 22.sp,color: primaryColor),),
   Row(children: [

      const Flexible(

          flex:5,
          child: SearchBarShape()),
      10.horizontalSpace,

      Flexible(
          flex: 1,
          child: const FilterButtonShape())



  ],
)

        ],

    );
  }
}
