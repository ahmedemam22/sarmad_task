import 'package:dartz/dartz.dart';
import '../errors/failure.dart';

abstract class Network{
  Future<Either<Failure,Map<String, dynamic>>> post(String url,Map<String,dynamic>data) ;

  }