import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/bloc/cubit/search/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sarmad_task/presentation/screens/search/search_shapes/filter_shapes/filter_header_shape.dart';
import 'package:sarmad_task/presentation/screens/search/search_shapes/filter_shapes/filter_inputs_shape.dart';
import 'package:sarmad_task/presentation/widgets/button_shapes/rounded_button_shape.dart';
class FilterShape extends StatelessWidget {
  const FilterShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
    child: Padding(
    padding: EdgeInsets.only(
    bottom: MediaQuery.of(context).viewInsets.bottom, // This attribute will auto scale size of Column widget when the keyboard showed
    ),
      child: Padding(
        padding:  EdgeInsets.all(10.w),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FilterHeaderShape(),
              FilterInputsShape(),
              RoundedButtonShape(title: 'Filter', onTap: (){
                Navigator.pop(context);
                context.read<SearchCubit>().fetchSearchData();
      }

              )],
          ),
        ),
      ),
    ));
  }
}
