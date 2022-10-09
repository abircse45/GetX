import 'package:flutter/material.dart';
import 'package:getx_part1/controller/data_controller.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_part1/screen/2nd_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DataController dataController = Get.put(DataController());

  //var   providerData = Provider.of<>(contex,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${dataController.value}",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //  Get.off(HomePage());

                ////  Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondPage()));
                dataController.increment();
              },
              child: Text("ADD"),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(HomePage());
                },
                child: Text("Button 2")),
          ],
        ),
      ),
    );
  }
}
