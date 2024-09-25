// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:student_data_list/studentadd.dart';

class Home2 extends StatefulWidget {
  final String name;
  final String roll;
  final int bm;
  final int em;
  final int mm;

  const Home2({
    super.key,
    required this.name,
    required this.roll,
    required this.bm,
    required this.em,
    required this.mm,
  });

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List<String> studentName = [];
  List<String> studentRoll = [];
  List<int> studentBm = [];
  List<int> studentEm = [];
  List<int> studentMm = [];

  @override
  void initState() {
    super.initState();
    studentName.add(widget.name);
    studentRoll.add(widget.roll);
    studentBm.add(widget.bm);
    studentEm.add(widget.em);
    studentMm.add(widget.mm);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Student Data",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ListView.builder(
                itemCount: studentName.length,
                itemBuilder: (context, index) {
                  int totalMark = studentBm[index] + studentEm[index] + studentMm[index];
                  double average = totalMark / 3;
                  Random random = Random();

                  int r = random.nextInt(256);
                  int g = random.nextInt(256);
                  int b = random.nextInt(256);

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, r, g, b),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              studentName[index],
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 43, 200, 74), fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Roll : ${studentRoll[index]}",
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 46, 30, 190)),
                            ),
                            Text(
                              "Bangla Marks : ${studentBm[index]}",
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 46, 30, 190)),
                            ),
                            Text(
                              "English Marks : ${studentEm[index]}",
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 46, 30, 190)),
                            ),
                            Text(
                              "Math Marks : ${studentMm[index]}",
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 46, 30, 190)),
                            ),
                            Text(
                              "Total Marks : $totalMark",
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 46, 30, 190)),
                            ),
                            Text(
                              "Average Marks : $average",
                              style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 46, 30, 190)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StudentAdd(),
                    ),
                  );
                },
                child: Text("Back"),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
