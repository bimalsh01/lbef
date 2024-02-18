import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test/firebase_options.dart';
import 'package:test/global_variables.dart';
import 'package:test/local_storage/SharedPref.dart';
import 'package:test/screens/AddStudentScreen.dart';
import 'package:test/screens/CalculatorScreen.dart';
import 'package:test/screens/HomeScreen.dart';
import 'package:test/screens/ImageScreen.dart';
import 'package:test/screens/InputScreen.dart';
import 'package:test/screens/LoginScreen.dart';
import 'package:test/screens/RegisterScreen.dart';
import 'package:test/screens/RowColumnScreen.dart';
import 'package:test/screens/TestScreen.dart';
import 'package:test/screens/ViewStudentsScreen.dart';
import 'package:test/services/Authentication.dart';
import 'package:test/widgets/Navbar.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() async {

  // initialize firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  // Auto Login
  User? user = await Authentication().autoLogin();

  

  // initialize notifications channel
  AwesomeNotifications().initialize(
    'resource://drawable/ic_launcher',
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notifications Config',
        channelDescription: 'Notification channel for basic tests',
        playSound: true,
        enableVibration: true,
        defaultColor: Color(0xFF9D50DD),
      )
    ]
  );

  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: user != null ? '/navbar' : '/login',
    routes: {
      // path : Screen to show
      '/home' : (context) => HomeScreen(),
      '/test' : (context) => TestScreen(),
      '/image' : (context) => ImageScreen(),
      '/row-column' : (context) => RowColumnScreen(),
      '/input' :(context) => InputScreen(),
      '/calculator' :(context) => CalculatorScreen(),
      '/add' :(context) => AddStudentScreen(),
      '/view' : (context) => ViewStudentsScreen(),
      '/navbar' : (context) => Navbar(),

      // Make a firebase routes
      '/login' : (context) => LoginScreen(),
      '/register' :(context) => RegisterScreen()
      
    },
  ));
}
