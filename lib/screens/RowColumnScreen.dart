import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({super.key});

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Column'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Text 1"),
                  Text("Text 2"),
                ],
              ),
              Column(
                children: [
                  Text("Text 3"),
                  Text("Text 4"),
                ],
              ),
              Column(
                children: [
                  Text("Text 5"),
                  Text("Text 6"),
                ],
            
              ),
              Column(
                children: [
                  Text("Text 7"),
                  Text("Text 8"),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Text('Microsoft Logo',  style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          )),

          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
