import 'package:flutter/material.dart';
import 'package:sarmad_task/bloc/cubit/search/search_cubit.dart';
import 'package:sarmad_task/presentation/screens/search/search_shapes/people_card_shape.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sarmad_task/presentation/widgets/shapes/custom_error_shape.dart';
import 'package:sarmad_task/presentation/widgets/shimmer/people_data_shimmer_shape.dart';

import '../../../../../data/model/data_display_model.dart';
import '../../../../../data/model/people_data_model.dart';
import '../../../../widgets/shapes/no_item_found_shape.dart';
class PeopleItemsShape extends StatelessWidget {
   PeopleItemsShape({Key? key}) : super(key: key);


late dynamic _result;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state is SearchDataLoading?5:state is SearchDataIsLoaded? (state).searchData
                  .screenResult.length :1,
              itemBuilder: (BuildContext context, int index) {
                _result = state is SearchDataIsLoaded?(state as SearchDataIsLoaded).searchData.screenResult[index]:'';

                return state is SearchDataEmpty||state is SearchInitial?const NoItemFoundShape(): state is SearchDataIsLoaded ?PeopleCardShape(peopleData: DataDisplayModel(
                    name: _result.name,
                    nationality: _result.nat,
                    desc: context.read<SearchCubit>().getFullDescription(_result.descriptions),
                    placeBirth: _result.placesOfBirth.length>0?_result.placesOfBirth[0]:'',
                    score: _result.score.toString())):state is SearchDataError?CustomErrorShape():PeopleDataShimmerShape();
              });
        });
  }
}
