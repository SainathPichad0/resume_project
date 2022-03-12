import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_resume/UI/Business_Card/bcard13/bcard13.dart';
import 'package:my_resume/UI/Business_Card/bcard14/bcard14.dart';
import 'package:my_resume/UI/Business_Card/bcard15/bcard15.dart';
import 'package:my_resume/UI/Business_Card/bcard18/bcard18.dart';

import 'package:my_resume/UI/Business_Card/bcard20/bcard20.dart';
import 'package:my_resume/UI/Business_Card/bcard21/bcard21.dart';
import 'package:my_resume/UI/Business_Card/bcard22/bacrd22page1.dart';
import 'package:my_resume/UI/Business_Card/bcard23/bcard23page.dart';

import 'package:my_resume/UI/Business_Card/bcard25/bcard25page.dart';

import 'package:my_resume/UI/pages/details_page.dart';

import 'package:my_resume/UI/templates/dummy.dart';
import 'package:my_resume/UI/templates/dummybusiness.dart';
import 'package:my_resume/UI/templates/resum11/mainui.dart';
import 'package:my_resume/UI/templates/resume1.dart';
import 'package:my_resume/UI/templates/resume12%20permute%202/resume14.dart';
import 'package:my_resume/UI/templates/resume12/resume12page.dart';
import 'package:my_resume/UI/templates/resume15/resume15.dart';
import 'package:my_resume/UI/templates/resume16/resume16page.dart';

import 'package:my_resume/UI/templates/resume2.dart';
import 'package:my_resume/UI/templates/resume25/resume25.dart';
import 'package:my_resume/UI/templates/resumee10/resume10.dart';


import 'UI/Business_Card/bcard12/bcard24.dart';
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
        // home:Resume11(
        //     name: 'Gaurang Shah',
        //     email: 'gaurangshah4@gmail.com',
        //     mainrole: 'Sales Executive',
        //     phone: '7754050674',
        //     linkedin: 'linkedin.com/gaurangshah',
        //     github: 'github.com/gaurangshah',
        //     descperson:
        //     'Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt. Sunt consectetur cupidatat fugiat occaecat velit reprehenderit voluptate est proident proident tempor aute mollit. Duis ad eiusmod sit Lorem eu amet ea ullamco velit incididunt voluptate. Veniam quis exercitation eu sint. Proident voluptate aliquip consequat commodo id. Nostrud voluptate tempor tempor exercitation nulla.',
        //     company: 'One Percent',
        //     roleincompany: 'Frontend Flutter Developer',
        //     aboutcompany: 'Lorem enim non est sunt ea deserunt mollit mollit qui id ex enim irure. Incididunt labore occaecat id laboris elit officia. Aliqua Lorem labore sint enim proident ea aliquip magna minim duis sint est.',
        //     fromcompany: '2022',
        //     tocompany: 'Present',
        //     college: 'Manipal Institute Of Technology',
        //     fromcollege: '2018',
        //     tocollege: '2022',
        //     degree: 'BTech',
        //     specialization: 'Computer And Communication Engineering',
        //     gpa: '8.34',
        //     skillsList: ['management', 'Dart', 'Java'])


       home: Bcard24(
         name: 'Gaurang Shah',
         email: 'gaurangshah4@gmail.com',
         mainrole: 'Sales Executive',
         phone: '7754050674',
         address: 'B-19,Chetan Vihar',
         city: 'Lucknow',
         pincode: '226024',
         state: 'Uttar Pradesh',
         website: 'www.linkedin.com/gaurangshah',

         company: 'One Percent',
       )
      );


  }
}
