import 'package:flutter/material.dart';
import 'package:my_resume/UI/templates/resume3/mainui.dart';
import 'package:my_resume/UI/templates/resume3permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume4/mainui.dart';
import 'package:my_resume/UI/templates/resume4permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume5/mainui.dart';
import 'package:my_resume/UI/templates/resume5permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume5permute2/mainui.dart';
import 'package:my_resume/UI/templates/resume6/mainui.dart';
import 'package:my_resume/UI/templates/resume6permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume6permute2/mainui.dart';
import 'package:my_resume/UI/templates/resume6permute3/mainui.dart';
import 'package:my_resume/UI/templates/resume7/mainui.dart';
import 'package:my_resume/UI/templates/resume7permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume7permute2/mainui.dart';
import 'package:my_resume/UI/templates/resume7permute3/mainui.dart';
import 'package:my_resume/UI/templates/resume8/mainui.dart';

class Dummy extends StatefulWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return ResumeUI4(
        name: 'Gaurang Shah',
        email: 'gaurangshah4@gmail.com',
        mainrole: 'Sales Executive',
        phone: '7754050674',
        linkedin: 'linkedin.com/gaurangshah',
        github: 'github.com/gaurangshah',
        descperson:
            'Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt. Sunt consectetur cupidatat fugiat occaecat velit reprehenderit voluptate est proident proident tempor aute mollit. Duis ad eiusmod sit Lorem eu amet ea ullamco velit incididunt voluptate. Veniam quis exercitation eu sint. Proident voluptate aliquip consequat commodo id. Nostrud voluptate tempor tempor exercitation nulla.',
        company: 'One Percent',
        roleincompany: 'Frontend Flutter Developer',
        aboutcompany: 'Lorem enim non est sunt ea deserunt mollit mollit qui id ex enim irure. Incididunt labore occaecat id laboris elit officia. Aliqua Lorem labore sint enim proident ea aliquip magna minim duis sint est.',
        fromcompany: '2022',
        tocompany: 'Present',
        college: 'Manipal Institute Of Technology',
        fromcollege: '2018',
        tocollege: '2022',
        degree: 'BTech',
        specialization: 'Computer And Communication Engineering',
        gpa: '8.34',
        skillsList: ['management', 'Dart', 'Java']);
  }
}
