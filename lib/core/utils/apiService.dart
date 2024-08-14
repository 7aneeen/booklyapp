import 'package:dio/dio.dart';

class Apiservice {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  Apiservice(this.dio);
  Future<Map<String,dynamic>>get({required String endPoints}) async {
    final response = await dio.get("$_baseUrl$endPoints");
    return response.data;
  }
}
