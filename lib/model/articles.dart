import '../dto_model/articles_model.dart';

class Article {
  final ArticlesModel? _article;

  Article(this._article);
  get getTitle => _article?.title;
}
