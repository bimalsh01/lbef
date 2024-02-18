import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Screen'),
      ),
      body: Column(
        children: [
          Text("Load image form network"),
          
          Image.network('https://static.vecteezy.com/system/resources/previews/001/227/740/original/abstract-blurred-gradient-mesh-background-vector.jpg'),
          
          Text("Load image from local"),

          Image.asset('assets/images/abc.jpeg'),

          // Row example
          Row(
            children: [
              Text("Row 1"),
              Text("Row 2"),
            ],
          )
        ],
      ),
    );
  }
}