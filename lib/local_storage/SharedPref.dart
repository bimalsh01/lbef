
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/global_variables.dart';

class SharedPref{

  // Setting user data to local storage
  Future<void> setUserData(userID, data) async {
    print("Setting user data to local storage");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("userID", userID);
    prefs.setString("firstname", data.firstname);
    prefs.setString("lastname", data.lastname);
    prefs.setString("email", data.email);

    print(prefs.getString("userID")!);
  }

  // get user data from local storage
  Future<void> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userID = prefs.getString("userID")!;
    firstname = prefs.getString("firstname")!;
    lastname = prefs.getString("lastname")!;
    email = prefs.getString("email")!;

    print("User IDz: $userID");
  }


}