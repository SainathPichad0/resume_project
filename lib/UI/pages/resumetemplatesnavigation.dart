import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:my_resume/UI/Business_Card/bcard13/bcard13.dart';
import 'package:my_resume/UI/Business_Card/bcard14/bcard14.dart';
import 'package:my_resume/UI/Business_Card/bcard15/bcard15.dart';
import 'package:my_resume/UI/Business_Card/bcard16/bcard16.dart';
import 'package:my_resume/UI/Business_Card/bcard17/bcard17.dart';
import 'package:my_resume/UI/Business_Card/bcard18/bcard18.dart';
import 'package:my_resume/UI/Business_Card/bcard19/bcard19.dart';

import 'package:my_resume/UI/Business_Card/bcard20/bcard20.dart';
import 'package:my_resume/UI/Business_Card/bcard21/bcard21.dart';
import 'package:my_resume/UI/Business_Card/bcard22/bacrd22page1.dart';
import 'package:my_resume/UI/Business_Card/bcard23/bcard23page.dart';
import 'package:my_resume/UI/Business_Card/bcard24/bcard24.dart';

import 'package:my_resume/UI/Business_Card/bcard25/bcard25page.dart';

import 'package:my_resume/UI/pages/bcard.dart';

import 'package:my_resume/UI/pages/resume.dart';

import 'package:my_resume/UI/templates/dummy.dart';
import 'package:my_resume/UI/templates/dummybusiness.dart';
import 'package:my_resume/UI/templates/resum11/mainui.dart';
import 'package:my_resume/UI/templates/resume1/resume1.dart';
import 'package:my_resume/UI/templates/resume12%20permute%202/resume12permute2.dart';
import 'package:my_resume/UI/templates/resume12/resume12page.dart';
import 'package:my_resume/UI/templates/resume13/resum13.dart';
import 'package:my_resume/UI/templates/resume15/resume15.dart';
import 'package:my_resume/UI/templates/resume16/resume16page.dart';
import 'package:my_resume/UI/templates/resume2/resume2.dart';

import 'package:my_resume/UI/templates/resume25/resume25.dart';
import 'package:my_resume/UI/templates/resume3/mainui.dart';
import 'package:my_resume/UI/templates/resume3permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume4/mainui.dart';
import 'package:my_resume/UI/templates/resume4permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume5/mainui.dart';
import 'package:my_resume/UI/templates/resume5permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume5permute2/mainui.dart';
import 'package:my_resume/UI/templates/resume6/mainui.dart';
import 'package:my_resume/UI/templates/resume6permute2/mainui.dart';
import 'package:my_resume/UI/templates/resume6permute3/mainui.dart';
import 'package:my_resume/UI/templates/resume7/mainui.dart';
import 'package:my_resume/UI/templates/resume7permute1/mainui.dart';
import 'package:my_resume/UI/templates/resume7permute2/mainui.dart';
import 'package:my_resume/UI/templates/resume7permute3/mainui.dart';
import 'package:my_resume/UI/templates/resume8/mainui.dart';
import 'package:my_resume/UI/templates/resumee10/resume10.dart';
import 'package:path_provider/path_provider.dart';

class ResumeNavigation extends StatefulWidget {
  const ResumeNavigation({Key? key}) : super(key: key);

  @override
  State<ResumeNavigation> createState() => _ResumeNavigationState();
}

class _ResumeNavigationState extends State<ResumeNavigation> {
  String name = "Tanmay Pande";
  String email = "gaurangshah4@gmail.com";
  String mainrole = 'Sales Executive';
  String phone = "7754050674";
  String linkedin = "linkedin.com./gaurangshah";
  String github = 'github.com/gaurangshah';
  String descperson =
      'Ut ea dolore duis qui tempor veniam do aliquip reprehenderit dolor nostrud. Officia excepteur tempor pariatur labore laborum do tempor. Laboris laboris cupidatat non qui ut cupidatat nostrud nostrud quis duis quis velit. Minim voluptate occaecat in reprehenderit quis in aliqua irure fugiat ea. In velit veniam enim sit officia sit pariatur pariatur.';
  String company = 'LUXURY CAR CENTRE';
  String roleincompany = 'Store Manager';
  String aboutcompany =
      'Ipsum elit non consequat fugiat irure ex anim exercitation ullamco cupidatat. Excepteur excepteur nisi dolore nostrud officia consectetur esse. Ipsum tempor proident sunt consectetur est id duis amet aute ut aute. Qui qui Lorem laborum id sint et mollit non.';
  String fromcompany = '2015';
  String tocompany = '2019';
  String college = 'Manipal Institute Of Technology';
  String fromcollege = '2014';
  String tocollege = '2015';
  String degree = 'BTech';
  String specialization = 'Computer And Communication Engineering';
  String gpa = '8.34';
  List<String> skillsList = ['Python', 'C++', 'Java', 'Dart'];
  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    print('height is' + h.toString() + 'width is' + w.toString());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume1_page(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r1.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume2(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r2.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI3(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r3.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI3permute1(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r3p1.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI4(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r4.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI4permute1(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r4p1.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI5(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r5.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI5permute1(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r5p1.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI5permute2(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r5p2.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI6(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r6.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI6(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r6p1.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI6permute2(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r6p2.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI6permute3(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r6p3.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI7(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r7.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI7permute1(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r7p1.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI7permute2(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r7p2.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI7permute3(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r7p3.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResumeUI8(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r8.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume10page(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r10.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume11(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r11.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resumee12(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r12.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume12permute2(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r12p2.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume15(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r15.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume16page(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r16.png',
                height: 400,
                width: 300,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resume25UI(
                            name: name,
                            email: email,
                            mainrole: mainrole,
                            phone: phone,
                            linkedin: linkedin,
                            github: github,
                            descperson: descperson,
                            company: company,
                            roleincompany: roleincompany,
                            aboutcompany: aboutcompany,
                            fromcompany: fromcompany,
                            tocompany: tocompany,
                            college: college,
                            fromcollege: fromcollege,
                            tocollege: tocollege,
                            degree: degree,
                            specialization: specialization,
                            gpa: gpa,
                            skillsList: skillsList,
                          )),
                );
              },
              child: Image.asset(
                'assets/completeuiimages/r25.png',
                height: 400,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
