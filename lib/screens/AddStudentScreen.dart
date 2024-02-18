import 'package:flutter/material.dart';
import 'package:test/model/Student.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  // making controllers for textfields
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  // make a form key
  GlobalKey<FormState> addStudentFormKey = GlobalKey<FormState>();

  // select gender variable
  String _selectedGender = 'male';

  // Adding students
  // 1. Make a empty array of students
  List students = [];

  // 2. Make a void function to add student
  void _addStudent(){
    Student student = Student(
      name: nameController.text,
      age: ageController.text,
      gender: _selectedGender,
      address: addressController.text,
      phone: phoneController.text
    );
    students.add(student);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/view', arguments: students);
            },
            icon: Icon(Icons.remove_red_eye),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Form(
                key: addStudentFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter student name';
                        }
                        return null;
                      },
                      decoration:
                          InputDecoration(labelText: 'Enter student name'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: ageController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter student age';
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: 'Enter student age'),
                    ),
        
                    // Select gender
                    const SizedBox(height: 10),
                    Text("Select gender"),
                    DropdownButton<String>(
                        value: _selectedGender,
                        items: const [
                          DropdownMenuItem(child: Text('Male'), value: 'male'),
                          DropdownMenuItem(
                              child: Text('Female'), value: 'female'),
                          DropdownMenuItem(
                              child: Text('Others'), value: 'others'),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        }),
        
                    TextFormField(
                      controller: addressController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter student address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter student address',
                      ),
                    ),
                    TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter student phone';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter student phone number',
                      ),
                    ),
        
                    ElevatedButton(
                        onPressed: () {
                          if (addStudentFormKey.currentState!.validate()) {
                            _addStudent();
                          }
                        },
                        child: Text('Add Student'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
