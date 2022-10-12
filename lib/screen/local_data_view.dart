import 'package:flutter/material.dart';
import 'package:getx_part1/local_data/user_shared_pref.dart';
import 'package:getx_part1/screen/2nd_page.dart';

class LocalDatView extends StatefulWidget {
  const LocalDatView({Key? key}) : super(key: key);

  @override
  State<LocalDatView> createState() => _LocalDatViewState();
}

class _LocalDatViewState extends State<LocalDatView> {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  @override
  void initState() {
    userNameController.text = UserSharedPreference().getuserName() ?? "";
    phoneNumberController.text = UserSharedPreference().getPhoneNumber();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [


          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextField(
              controller: userNameController,
              decoration: InputDecoration(
                hintText: "User Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                hintText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await UserSharedPreference()
                    .setPhoneNumber(phoneNumberController.text);

                await UserSharedPreference().setUserName(userNameController.text);

                print("Set Phone Number___${phoneNumberController.text}");
                print("Set User Name ${userNameController.text}");
              },
              child: Text("Save")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text("2nd Page")),
        ],
      ),
    );
  }
}
