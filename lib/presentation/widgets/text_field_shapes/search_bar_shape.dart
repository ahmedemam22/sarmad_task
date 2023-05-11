import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarmad_task/bloc/cubit/search/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constant/colors.dart';

class SearchBarShape extends StatelessWidget {
  const SearchBarShape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h),
      child: TextFormField(
        onFieldSubmitted:(v){
         List<String>names= v.split(' ');
        if( names.length>1) context.read<SearchCubit>().mnameController.text=names[1];
         context.read<SearchCubit>().fetchSearchData();
        },
        controller: context.read<SearchCubit>().fnameController,
        decoration: InputDecoration(
          enabledBorder: _inputBorder,
          focusedBorder: _inputBorder.copyWith(
            borderSide: BorderSide(
              color: blue,
            ),
          ),
          contentPadding:  EdgeInsets.symmetric(
            horizontal: 18.w,
          ),
          hintText: 'Search....',
          suffixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}

var _inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.w),
  borderSide: BorderSide(
    color: primaryColor.withOpacity(0.3),
    width: 0.8.w,
  ),
);