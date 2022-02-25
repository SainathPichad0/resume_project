import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';

class ResumeUI5permute1 extends StatefulWidget {
  String name;
  String email;
  String phone;
  String linkedin;
  String mainrole;
  String github;
  String descperson;
  String company;
  String roleincompany;
  String aboutcompany;
  String fromcompany;
  String tocompany;
  String college;
  String fromcollege;
  String tocollege;
  String degree;
  String specialization;
  String gpa;
  List<String> skillsList;

   ResumeUI5permute1({
    Key? key,
    required this.name,
    required this.email,
    required this.mainrole,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.descperson,
    required this.company,
    required this.roleincompany,
    required this.aboutcompany,
    required this.fromcompany,
    required this.tocompany,
    required this.college,
    required this.fromcollege,
    required this.tocollege,
    required this.degree,
    required this.specialization,
    required this.gpa,
    required this.skillsList,
  }) : super(key: key);

  @override
  _ResumeUI5permute1State createState() => _ResumeUI5permute1State();
}

class _ResumeUI5permute1State extends State<ResumeUI5permute1> {
  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273, kw = 1 / 392.72727272727275;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;

    print('height is' + h.toString() + 'width is' + w.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        actions: [
          TextButton.icon(
              onPressed: () async {
                //Widget w = resumebody();
                 final pdfFile = await generate(
                    759.27,
                    392.72,
                    widget.name,
                    widget.email,
                    widget.phone,
                    widget.linkedin,
                    widget.mainrole,
                    widget.github,
                    widget.descperson,
                    widget.company,
                    widget.roleincompany,
                    widget.aboutcompany,
                    widget.fromcompany,
                    widget.tocompany,
                    widget.college,
                    widget.fromcollege,
                    widget.tocollege,
                    widget.degree,
                    widget.specialization,
                    widget.gpa,
                    widget
                        .skillsList); //This generates a file and stores in pdfFile
                //invoice here represents the values which we have to show
                PdfApi.openFile(pdfFile);
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
              label: Text(
                'Generate',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: resumebody(),
    );
  }

  Widget resumebody() {
    return Container(
      color: Colors.black,
      child: ListView(

        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 0.01,
          ),
        //  header('Lucas William', 'Mobile Ui/Ux developer'),
        header(widget.name, widget.mainrole),
          SizedBox(
            height: h * 0.05,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: w * 0.45,
                  child: Column(
                    children: [
                      // contacts('gaurangshah4@gmail.com', '7754050674',
                      //     'github.com/gaurangshah', 'linkedin.com/gaurangshah'),
                      contacts(widget.email, widget.phone, widget.github, widget.linkedin),
                      //skills(['Python', 'C++', 'Java']),
                      skills(widget.skillsList),
                      // education('2017', '2021', 'MIT Manipal', 'BTech',
                      //     'Computer And Communication Engineering', '8.34')
                      education(widget.fromcollege, widget.tocollege, widget.college, widget.degree, widget.specialization, widget.gpa)
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Container(
                  width: w * 0.50,
                  child: Column(
                    children: [
                      // profile(
                      //     'Officia aliquip sunt non et reprehenderit pariatur anim culpa non laborum Lorem veniam magna. Tempor reprehenderit ullamco ut ea ea non fugiat reprehenderit proident laboris officia. Do consequat cillum laboris aliquip.'),
                      profile(widget.descperson),
                      // workex(
                      //     'Call Centre Manager',
                      //     '2017',
                      //     '2019',
                      //     'ABC Call Centre',
                      //     'Duis sunt consequat tempor velit deserunt. In officia cillum commodo dolore eiusmod labore nulla sit magna magna ad ullamco. Nulla ut laborum irure dolor voluptate anim consectetur proident nostrud nulla aute.')
                      workex(widget.roleincompany, widget.fromcompany, widget.tocompany, widget.company, widget.aboutcompany)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget header(String name, String occupation) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name.toUpperCase(),
            style: TextStyle(
                fontSize: 30 * kh * h,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                letterSpacing: 2 * kw * w),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            occupation.toUpperCase(),
            style: TextStyle(
              fontSize: 18 * kh * h,
                color: Colors.pink,

            ),
          ),
        ],
      ),
    );
  }

  Widget contacts(String email, String phone, String github, String linkedin) {
    return Padding(
      padding: EdgeInsets.only(left: 20 * kw * w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Divider(color: Colors.pink, thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'CONTACTS',
              style: TextStyle(
                fontSize: 18 * kh * h,
                fontWeight: FontWeight.bold,
                color: Colors.pink,

                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            child: const Divider(color: Colors.pink, thickness: 1),
            width: w * 0.45,
          ),
          Text(
            phone,
            style: TextStyle(fontSize: 12 * kh * h,color: Colors.pink),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 12 * kh * h,color: Colors.pink),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            linkedin,
            style: TextStyle(fontSize: 12 * kh * h,color: Colors.pink,)
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            github,
            style: TextStyle(fontSize: 12 * kh * h,color: Colors.pink),
          ),
        ],
      ),
    );
  }

  String combine(List<String> s) {
    String combine = "";
    for (int i = 0; i < s.length; i++) {
      combine += s[i] + "\n";
    }
    return combine;
  }

  Widget skills(List<String> s) {
    return Padding(
      padding: EdgeInsets.only(left: 20 * kw * w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Divider(color: Colors.pink, thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'SKILLS',
              style: TextStyle(
                fontSize: 18 * kh * h,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                letterSpacing: 2 * kw * w,
              ),
            ),
          ),
          Container(
            child: const Divider(color: Colors.pink, thickness: 1),
            width: w * 0.45,
          ),
          Text(
            combine(s),
            style: TextStyle(fontSize: 15 * kh * h,color: Colors.pink),
          ),
        ],
      ),
    );
  }

  Widget education(String from, String to, String college, String degree,
      String specialization, String gpa) {
    return Padding(
      padding: EdgeInsets.only(left: 20 * kw * w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Divider(color: Colors.pink, thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'EDUCATION',
              style: TextStyle(
                fontSize: 18 * kh * h,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                letterSpacing: 2 * kw * w,
              ),
            ),
          ),
          Container(
            child: const Divider(color: Colors.pink, thickness: 1),
            width: w * 0.45,
          ),
          Text(
            from + '-' + to,
            style: TextStyle(fontSize: 15 * kh * h, color: Colors.pink,),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            college.toUpperCase(),
            style: TextStyle(
              fontSize: 15 * kh * h,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            degree + '  in  ' + specialization,
            style: TextStyle(
              fontSize: 15 * kh * h,
              color: Colors.pink,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            'GPA :' + gpa,
            style: TextStyle(
              fontSize: 15 * kh * h,
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }

  Widget profile(String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: const Divider(color: Colors.pink, thickness: 1),
          width: w * 0.50,
        ),
        Container(
          child: Text(
            'PROFILE',
            style: TextStyle(
              fontSize: 18 * kh * h,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
              letterSpacing: 2 * kw * w,
            ),
          ),
        ),
        Container(
          child: const Divider(color: Colors.pink, thickness: 1),
          width: w * 0.50,
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 15 * kh * h,color: Colors.pink,),
        ),
      ],
    );
  }

  Widget workex(
      String title, String from, String to, String company, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: const Divider(color: Colors.pink, thickness: 1),
          width: w * 0.50,
        ),
        Container(
          child: Text(
            'WORK EXPERIENCE',
            style: TextStyle(
              fontSize: 18 * kh * h,
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              letterSpacing: 2 * kw * w,
            ),
          ),
        ),
        Container(
          child: const Divider(color: Colors.pink, thickness: 1),
          width: w * 0.50,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15 * kh * h, fontWeight: FontWeight.bold,color: Colors.pink,),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          children: [
            Text(
              from + '-' + to + '    ',
              style: TextStyle(
                fontSize: 12 * kh * h,
                color: Colors.pink,
               
              ),
            ),
            Text(
              company,
              style:
                  TextStyle(fontSize: 12 * kh * h,color: Colors.pink, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 15 * kh * h,color: Colors.pink,),
        )
      ],
    );
  }
}
