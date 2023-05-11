import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../../constant/app_strings.dart';
import '../connection/network.dart';

import '../errors/failure.dart';
class Api extends Network {

  @override
  Future<Either<Failure, Map<String, dynamic>>> post(String url,
      Map<String, dynamic>data) async {
    try {
      http.Response response = await http.post(
          Uri.parse(url),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },

          body: json.encode(data)
      );
      return Right(json.decode(response.body));
    }
    catch (e) {
      return const Left(ServerFailure(StringsManager.serverFailureMsg));
    }
  }






}

Api api=Api();