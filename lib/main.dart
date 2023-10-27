import 'package:asignment_ui/add%20education.dart';
import 'package:asignment_ui/add%20resume.dart';
import 'package:asignment_ui/filter.dart';
import 'package:asignment_ui/view%20profile.dart';
import 'package:flutter/material.dart';

import 'add details.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.orange,
      ),
      home: Add_Details(),
    );
  }
}
