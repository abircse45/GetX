import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import '../controller/data_controller.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
          // Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Second Page"),
      ),
      body: Container(
        child: Text("${dataController.value}"),
      ),
    );
  }
}
