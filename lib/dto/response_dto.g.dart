// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) => ResponseDto(
      status: json['status'],
      totalResults: json['totalResults'] as int?,
      articles: json['articles'],
    );

Map<String, dynamic> _$ResponseDtoToJson(ResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
