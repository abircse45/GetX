import 'package:flutter/material.dart';
import 'package:getx_part1/controller/data_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("GetX"),
      ),
      body: Obx(() {
        if (dataController.loader.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            // shrinkWrap: true,
            // primary: false,
            itemCount: dataController.getModelList.value.length,
            itemBuilder: (_, index) {
              var data= dataController.getModelList.value[index];
              return Card(
                elevation: 5,
                child: ListTile(
                  title:
                      Text("${data.title}",style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
