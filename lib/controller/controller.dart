import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CountController extends GetxController {
  var count = 0.obs;
  var likes = false.obs;
  void increment() {
    count++;
  }
}

class ReactiveController extends GetxController {
  var count1 = 0.obs;
  var count2 = 0.obs;
  var likes = false.obs;

  //리스너 처럼 사용되서,
  get sum => count1.value + count2.value;
}
