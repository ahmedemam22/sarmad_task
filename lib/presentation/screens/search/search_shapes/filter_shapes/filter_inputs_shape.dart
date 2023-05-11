import 'package:flutter/material.dart';
import 'package:sarmad_task/bloc/cubit/search/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/text_field_shapes/rectangle_text_field_shape.dart';
class FilterInputsShape extends StatelessWidget {
   FilterInputsShape({Key? key}) : super(key: key);
late SearchCubit _searchCubit;
  @override
  Widget build(BuildContext context) {
    _searchCubit=context.read<SearchCubit>();
    return Form(
      child: Column(
        children: [
          TextFieldRectangle(title: 'Fname', hint: 'fname', controller: _searchCubit.fnameController,),
          TextFieldRectangle(title: 'Mname', hint: 'mname', controller: _searchCubit.mnameController,),
          TextFieldRectangle(title: 'Nat', hint: 'nat', controller: _searchCubit.natController,),

        ],
      ),
    );
  }
}
