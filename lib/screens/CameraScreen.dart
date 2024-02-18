import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  // declare file
  File? _image;

  // open media function
  void _openMedia(ImageSource source) async {
    // 1. Ask for permission
    final permissionStatus = await Permission.camera.request();

    // 2. Check if permission is granted or denied
    if (permissionStatus.isPermanentlyDenied) {
      openAppSettings();
    }

    // 3. Open camera
    final pickImage = await ImagePicker().pickImage(source: source);

    // 4. Set state and assing image to file
    setState(() {
      _image = File(pickImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Camera Screen'),
          ElevatedButton(
            onPressed: () {
              _openMedia(ImageSource.camera);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            child: Text('Open Camera'),
          ),
          ElevatedButton(
            onPressed: () {
              _openMedia(ImageSource.gallery);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, foregroundColor: Colors.white),
            child: Text('Open Gallery'),
          ),

          // show image
          _image == null 
            ? Text("No image selected") 
            : Image.file(_image!)
        ],
      ),
    );
  }
}
