import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part1/local_data/user_shared_pref.dart';
import 'screen/local_data_view.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreference().intiSharedPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LocalDatView(),
    );
  }
}
