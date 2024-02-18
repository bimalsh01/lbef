import 'package:flutter/material.dart';

class ViewStudentsScreen extends StatefulWidget {
  const ViewStudentsScreen({super.key});

  @override
  State<ViewStudentsScreen> createState() => _ViewStudentsScreenState();
}

class _ViewStudentsScreenState extends State<ViewStudentsScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    final List students = args;

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Students'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index){
          final individualStudent = students[index];
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(individualStudent!.name),
            subtitle: Text(individualStudent!.address),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        }
      ),
    );
  }
}