import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../dto_model/response_dto.dart';

part 'articles_repository.g.dart';

@RestApi(baseUrl: 'https://newsapi.org/v2')
abstract class ArticlesRepository {
  factory ArticlesRepository(Dio dio, {String baseUrl}) = _ArticlesRepository;

  @GET('/top-headlines?country=kr&apiKey=70d49909a69246c3a9b9633531f111f8')
  Future<ResponseDto> getNews();
}
