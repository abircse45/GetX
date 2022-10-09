import 'package:get/get.dart';

class DataController extends GetxController {
  RxInt value = 0.obs;
  //String data = "Abir Hasan";
  increment() {
    value++;
  }
}
