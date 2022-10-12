import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:getx_part1/local_data/user_shared_pref.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? phoneNumber;
  String? userName;

  @override
  void initState() {
    phoneNumber = UserSharedPreference().getPhoneNumber();
    userName = UserSharedPreference().getuserName();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () {
              Get.back();
              // Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${phoneNumber}",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "${userName}",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
