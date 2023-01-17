import 'package:json_annotation/json_annotation.dart';

import 'articles_model.dart';

part 'response_dto.g.dart';

@JsonSerializable()
class ResponseDto {
  final dynamic status;
  final int? totalResults;
  List<ArticlesModel>? articles;

  ResponseDto({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory ResponseDto.fromJson(Map<String, dynamic> json) => _$ResponseDtoFromJson(json);
}
