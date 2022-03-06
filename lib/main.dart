import 'package:flutter/material.dart';
import 'package:my_resume/UI/pages/details_page.dart';
import 'package:my_resume/UI/resume17/resume25.dart';
import 'package:my_resume/UI/templates/Card01/card01.dart';

import 'package:my_resume/UI/templates/dummy.dart';
import 'package:my_resume/UI/templates/resume1.dart';
import 'package:my_resume/UI/templates/resume12%20permute%202/resume14.dart';
import 'package:my_resume/UI/templates/resume12/resume12page.dart';
import 'package:my_resume/UI/templates/resume15/resume15.dart';
import 'package:my_resume/UI/templates/resume16/resume16page.dart';

import 'package:my_resume/UI/templates/resume2.dart';
import 'package:my_resume/UI/templates/resumee10/resume10.dart';

import 'UI/templates/resume12 permute1/resum13.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Resume25UI(),
    );
  }
}
