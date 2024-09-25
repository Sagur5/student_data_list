// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:student_data_list/homepage1.dart';

class StudentAdd extends StatefulWidget {
  const StudentAdd({super.key});

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rollController = TextEditingController();
  final TextEditingController bmController = TextEditingController();
  final TextEditingController emController = TextEditingController();
  final TextEditingController mmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Name"),
              ),
              TextField(
                controller: rollController,
                decoration: InputDecoration(hintText: "Roll"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: bmController,
                decoration: InputDecoration(hintText: "Bangla Marks"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              TextField(
                controller: emController,
                decoration: InputDecoration(hintText: "English Marks"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              TextField(
                controller: mmController,
                decoration: InputDecoration(hintText: "Math Marks"),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty &&
                      rollController.text.isNotEmpty &&
                      bmController.text.isNotEmpty &&
                      emController.text.isNotEmpty &&
                      mmController.text.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Home2(
                          name: nameController.text,
                          roll: rollController.text,
                          bm: int.parse(bmController.text),
                          em: int.parse(emController.text),
                          mm: int.parse(mmController.text),
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill in all fields")),
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
