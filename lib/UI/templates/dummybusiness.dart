import 'package:flutter/material.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1_permute1/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard2/mainui.dart';
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

class DummyBusiness extends StatefulWidget {
  const DummyBusiness({Key? key}) : super(key: key);

  @override
  _DummyBusinessState createState() => _DummyBusinessState();
}

class _DummyBusinessState extends State<DummyBusiness> {
  @override
  Widget build(BuildContext context) {
    return BusinessCard2UI(
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
       );
  }
}
