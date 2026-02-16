import 'package:bloc_clean_architecture/core/utils/app_urls.dart';
import 'package:dio/dio.dart';

class PeopleApiClient {

  //Api client to get people data from the api
  final Dio _dio = Dio();

  Future<dynamic> getPeople() async {
    try {
      final response = await _dio.get(AppUrls.baseUrl);
      return response.data;
    } catch (e) {
      throw Exception('Failed to load people');
    }
  }


}