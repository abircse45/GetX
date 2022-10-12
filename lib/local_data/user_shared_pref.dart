import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreference {
  static SharedPreferences? sharedPreferences;

  Future intiSharedPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future setPhoneNumber(String phonenumber) async {
    return await sharedPreferences!.setString("phone", phonenumber);
  }

  getPhoneNumber() {
    return sharedPreferences!.getString("phone");
  }

  Future setUserName(String userName) async {
    return await sharedPreferences!.setString("userName", userName);
  }

  getuserName() {
    return sharedPreferences!.get("userName");
  }
}
