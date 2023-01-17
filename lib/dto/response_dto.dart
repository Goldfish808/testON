import 'package:json_annotation/json_annotation.dart';

part 'response_dto.g.dart';

@JsonSerializable()
class ResponseDto {
  final dynamic status;
  final int? totalResults;
  dynamic articles;

  ResponseDto({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory ResponseDto.fromJson(Map<String, dynamic> json) => _$ResponseDtoFromJson(json);
  // ResponseDto.fromJson(Map<String, dynamic> json)
  //     : status = json["status"],
  //       totalResults = json["totalResults"],
  //       articles = json["articles"];
}
