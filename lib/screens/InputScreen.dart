import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextButton(onPressed: (){}, child: Text('Text Button')),
              ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
              OutlinedButton(onPressed: (){}, child: Text('Outlined Button')),
              IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
            ],
          ),
        ),
    );
  }
}