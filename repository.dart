import 'package:dio/dio.dart';

final class Repository {
  final Dio _dio = Dio();

  Future<String> loadImage() async{
    final Response response = await _dio.get("https://api.thecatapi.com/v1/images/search");
    final String gif = response.data[0]['url'];
    return gif;
  }
}