import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:test/global_variables.dart';
import 'package:test/local_storage/SharedPref.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  showNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 1,
            channelKey: 'basic_channel',
            title: 'Hello!',
            body: 'Wow!, Its working!'));
  }

  @override
  void initState() {
    SharedPref().getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome, $firstname!'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showNotification();
                },
                child: const Text('Show Notification')),
          ],
        ));
  }
}
