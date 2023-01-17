import 'package:json_annotation/json_annotation.dart';

part 'articles_model.g.dart';

@JsonSerializable()
class ArticlesModel {
  dynamic source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  ArticlesModel(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => _$ArticlesModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticlesModelToJson(this);
}
