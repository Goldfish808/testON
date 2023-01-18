import '../dto_model/articles_model.dart';

class Article {
  final ArticlesModel? article;
  List<ArticlesModel> articlesList = [];

  Article({this.article});
  get getTitle => article?.title;
}
