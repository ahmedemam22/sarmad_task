

import 'package:sarmad_task/data/model/people_data_model.dart';

import '../network/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../services/search_services.dart';


class SearchRespository{
  final SearchServices _searchServices=SearchServices();
  Future< Either<Failure,PeopleDataModel>>  fetchSearchData(String fname,String mname,String nat)async{
    Either<Failure,Map<String,dynamic>> searchDataResult= await _searchServices.fetchSearchData(fname,mname,nat);
    return searchDataResult.fold((searchDataError) => Left(searchDataError), (searchData) =>   Right( PeopleDataModel.fromJson(searchData)));
  }

}