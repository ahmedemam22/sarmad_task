import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/colors.dart';
import '../../../constant/text_styles_manager.dart';



class TextFieldRectangle extends StatelessWidget {
  const TextFieldRectangle({Key? key, required this.title,required this.hint, required this.controller, }) : super(key: key);
  final String title;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

                Text(title,style: TextStylesManager.semiBoldStyle(fontSize: 16.sp,color: grey),),


            SizedBox(
              height: 50.h,

              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: '$hint ',
                    hintStyle: TextStylesManager.regularStyle(fontSize: 12.sp,color: lightGray),
                    contentPadding:  EdgeInsets.all(8.w),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.w))),
                onChanged: (value) {
                  // do something
                },
              ),
            )
          ],
        ),
      );
  }
}