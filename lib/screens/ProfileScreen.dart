import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test/global_variables.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
            ),
            const SizedBox(height: 10),
            Text("$firstname $lastname",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            Text("$email"),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Edit Profile"),
                    subtitle: Text("Customize your profile"),
                    leading: Icon(Icons.edit),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    title: Text("Change Password"),
                    subtitle: Text("Give a old password, take a new"),
                    leading: Icon(Icons.lock),
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size.fromHeight(50)),
              child: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
