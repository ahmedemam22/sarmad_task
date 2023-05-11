import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/data/model/data_display_model.dart';
import 'package:sarmad_task/presentation/widgets/shapes/text_with_icon_shape.dart';

import '../../../../../constant/colors.dart';

class PeopleCardShape extends StatelessWidget {
  const PeopleCardShape({Key? key, required this.peopleData}) : super(key: key);
final DataDisplayModel peopleData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Card(
        elevation: 3,



        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20.w)
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.w),
            color: white

          ),
          child: Padding(
            padding:  EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                    TextWithIconShape(title:peopleData.name,iconData: Icons.perm_identity,),


                 TextWithIconShape(title:peopleData.desc, iconData: Icons.description,),

                    TextWithIconShape(title:peopleData.placeBirth,iconData: Icons.timelapse_sharp,),

                        TextWithIconShape(title:peopleData.score,iconData: Icons.score,),
                TextWithIconShape(title:peopleData.nationality,iconData: Icons.location_city,),



              ],
            ),
          ),
        ),



      ),
    );

}
  }

