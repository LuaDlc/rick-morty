import 'package:dio/dio.dart';
import 'package:rick_morty/models/detailed_app.dart';
import 'package:rick_morty/models/paginated_app.dart';

abstract class Repository {
  static final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://rickandmortyapi.com/api', 
    ),
  );

  static Future <PaginatedApp> getUpcomingCaracters() async {
    final response = await _dio.get('/characters/upcoming');

    final data = PaginatedApp.fromJson(response.data);

    return data;
  }

  static Future<DetailedApp> getAppDetails(int id) 
  async {
    final response = await _dio.get('/character/$id');

    final data = DetailedApp.fromJson(response.data);

    return data;
  }
}