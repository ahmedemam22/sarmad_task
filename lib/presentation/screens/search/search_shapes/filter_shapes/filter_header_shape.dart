import 'package:flutter/material.dart';
import 'package:sarmad_task/constant/text_styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/presentation/widgets/button_shapes/close_button_shape.dart';

class FilterHeaderShape extends StatelessWidget {
  const FilterHeaderShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Filter Your Data",style: TextStylesManager.mediumStyle(fontSize: 22.sp),),
        const CloseButtonShape()

      ],
    );
  }
}
