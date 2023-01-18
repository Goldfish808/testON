import 'package:fluttertest/dto_model/articles_model.dart';
import 'package:fluttertest/model/favorites.dart';

//해당 파일 테스트코드 실행
//flutter test test/favorites_add_test.dart
void main() {
  ArticlesModel articlesModel1 = ArticlesModel();
  articlesModel1.title = "제목";
  articlesModel1.description = "기사 내욘요요용요요요요요요요요요요요요요";
  articlesModel1.likes = null;

  ArticlesModel articlesModel2 = ArticlesModel();
  articlesModel2.title = "제목";
  articlesModel2.description = "기사 내욘요요용요요요요요요요요요요요요요";
  articlesModel2.likes = null;

  ArticlesModel articlesModel3 = ArticlesModel();
  articlesModel3.title = "제목";
  articlesModel3.description = "기사 내욘요요용요요요요요요요요요요요요요";
  articlesModel3.likes = null;

  List<ArticlesModel> favoritesList = Favorites().favoritesList;

  print("테스트 확인 ArticlesModels DATA : ${articlesModel1.description}");
  for (ArticlesModel favorites in favoritesList) {
    print("Favorites 리스트에 담기 전 좋아요 상태: ${favorites.likes}");
  }

  favoritesList.add(articlesModel1);
  favoritesList.add(articlesModel2);
  favoritesList.add(articlesModel3);
  for (ArticlesModel favorites in favoritesList) {
    print("Favorites 리스트에 담은 후 좋아요 누르기 전 상태: ${favorites.likes}");
  }

  favoritesList[1].likes = true;
  favoritesList.forEach((favorite) {
    print("Favorites 리스트에 담은 후 좋아요 누르기 전 상태: ${favorite.likes}");
  });
}
