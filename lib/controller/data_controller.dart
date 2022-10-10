import 'package:get/get.dart';
import 'package:getx_part1/network/server_get_data.dart';

import '../model/get_model.dart';

class DataController extends GetxController {
  var getModelList = RxList<GetModel>().obs;
  RxBool loader = true.obs;

  final ServerGetData _serverGetData = ServerGetData();

  @override
  void onInit() {
    getDataCalling();
    super.onInit();
  }

  void getDataCalling() async {
    loader.value = true;
    var allserverdata = await _serverGetData.getData();
    if (allserverdata != null) {
      getModelList.value.addAll(allserverdata);
      update();
      loader.value = false;
    }
  }
}
