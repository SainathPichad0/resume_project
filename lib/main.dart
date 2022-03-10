import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/UI/Business_Card/bcard23/bcard23page.dart';

import 'package:my_resume/UI/Business_Card/bcard25/bcard25page.dart';

import 'package:my_resume/UI/pages/details_page.dart';

import 'package:my_resume/UI/templates/dummy.dart';
import 'package:my_resume/UI/templates/dummybusiness.dart';
import 'package:my_resume/UI/templates/resume1.dart';
import 'package:my_resume/UI/templates/resume12%20permute%202/resume14.dart';
import 'package:my_resume/UI/templates/resume12/resume12page.dart';
import 'package:my_resume/UI/templates/resume15/resume15.dart';
import 'package:my_resume/UI/templates/resume16/resume16page.dart';

import 'package:my_resume/UI/templates/resume2.dart';
import 'package:my_resume/UI/templates/resume25/resume25.dart';
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
    return
     MaterialApp(
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
        home:Bcard23page(
          company: "One Percent",
          phone: "8637731970",
          state: "Maharashtra",
          website: "Sainath.com",

          mainrole: "Flutter Developer",
          email: "saipichad7@gmail.com",
          name: "Sainath Pichad",
          address: "Pune 441043",
          city: "Pune",
          pincode: "411043",

        )

      );


  }
}
