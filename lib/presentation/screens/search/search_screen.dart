import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/presentation/screens/search/search_shapes/people_shape/people_items_shape.dart';
import 'package:sarmad_task/presentation/screens/search/search_shapes/search_header_shape.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h,left: 20.w,right: 20.w),
        child: Column(
          children: [
            const SearchHeaderShape(),
            Expanded(child: PeopleItemsShape())

          ],
        ),
      ),
    );
  }
}
