import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:sarmad_task/data/model/people_data_model.dart';

import '../../../data/repository/search_repository.dart';


part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  final SearchRespository _searchRepository=SearchRespository();
 late PeopleDataModel peopleDataModel;
 //controllers
  TextEditingController fnameController=TextEditingController();
  TextEditingController mnameController=TextEditingController();
  TextEditingController natController=TextEditingController();


  fetchSearchData(){

   emit(SearchDataLoading(true));
    _searchRepository.fetchSearchData(fnameController.text,mnameController.text,natController.text).then((message) => message.fold((searchDataError) => emit(SearchDataError(searchDataError.message)), (searchData) {
      peopleDataModel=searchData;

     peopleDataModel.screenResult.isEmpty?emit(SearchDataEmpty()): emit(SearchDataIsLoaded(peopleDataModel));
    }));
  }

String getFullDescription(List<DescriptionElement>descItems){
    String fullDesc='';
    descItems.forEach((element) {
      fullDesc+=checkEmptyText(element.description1);
      fullDesc+=checkEmptyText(element.description2);
      fullDesc+=checkEmptyText(element.description3);


    });
    return fullDesc;
}
String checkEmptyText(String text){
    return text!=""?text+',':'';
}
}
