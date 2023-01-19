import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../dto_model/articles_model.dart';

class CountController extends GetxController {
  List<ArticlesModel> favoritesList = [];
  void increment(value) {
    favoritesList.add(value);
  }

  void derement(value) {
    favoritesList.remove(value);
  }

  void deleteAll() {
    favoritesList.clear();
  }
}

class ReactiveController extends GetxController {
  var count1 = 0.obs;
  var count2 = 0.obs;
  var likes = false.obs;

  //리스너 처럼 사용되서,
  get sum => count1.value + count2.value;
}
