// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:get/get.dart';
// import '../controller/data_controller.dart';
//
//
// class SecondPage extends StatelessWidget {
//   const SecondPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     final dataController = Get.put(DataController());
//          return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//
//         leading: IconButton(onPressed: (){
//           Get.back();
//           // Navigator.pop(context);
//         }, icon: Icon(Icons.arrow_back)),
//         title: Text("Second Page"),
//       ),
//       body: Center(
//         child: Text("${dataController.value}",style: TextStyle(fontSize: 40),),
//       ),
//     );
//   }
// }
