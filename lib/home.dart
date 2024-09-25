// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? hite;
  double? wid;
  int? r;
  int? g;
  int? b;

  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: change ? hite = 250 : hite = 400,
              width: change ? wid = 300 : wid = 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(
                  255,
                  r ?? 100,
                  g ?? 100,
                  b ?? 100,
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Random random = Random();
                r = random.nextInt(256);
                g = random.nextInt(256);
                b = random.nextInt(256);
                setState(() {});
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
