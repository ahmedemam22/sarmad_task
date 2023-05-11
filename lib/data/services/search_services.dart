
import '../network/connection/apis.dart';
import '../network/constant/end_points.dart';
import '../network/errors/failure.dart';
import 'package:dartz/dartz.dart';
class SearchServices{
  Future<Either<Failure,Map<String,dynamic> >> fetchSearchData(String fname,String mname,String nat)async{

    final response = await api.post(baseUrl+searchUrl,{
      "fname":fname,
      "mname":mname,
      "nat":nat
    });
    return response;
  }
}