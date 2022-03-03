import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
import 'dart:io';

class ResumeUI7 extends StatefulWidget {
  String name;
  String email;
  String mainrole;
  String phone;
  String linkedin;
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

  ResumeUI7({
    Key? key,
    required this.name,
    required this.mainrole,
    required this.email,
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
  _ResumeUI7State createState() => _ResumeUI7State();
}

class _ResumeUI7State extends State<ResumeUI7> {
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
                        .skillsList); //required This generates a file and stores in pdfFile
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
    return ListView(children: [
      //introduction("Elizabeth Holmes", "gaurangshah4@gmail.com", "7754050674"),
      introduction(widget.name, widget.email, widget.phone),

      SizedBox(
        height: h * 0.01,
      ),
      // about(
      //   'Ut ea dolore duis qui tempor veniam do aliquip reprehenderit dolor nostrud. Officia excepteur tempor pariatur labore laborum do tempor. Laboris laboris cupidatat non qui ut cupidatat nostrud nostrud quis duis quis velit. Minim voluptate occaecat in reprehenderit quis in aliqua irure fugiat ea. In velit veniam enim sit officia sit pariatur pariatur.'),
      about(widget.mainrole,widget.descperson),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: w * 0.6,
                child:
                    // experience(
                    //     'LUXURY CAR CENTRE',
                    //     'Store Manager',
                    //     'Ipsum elit non consequat fugiat irure ex anim exercitation ullamco cupidatat. Excepteur excepteur nisi dolore nostrud officia consectetur esse. Ipsum tempor proident sunt consectetur est id duis amet aute ut aute. Qui qui Lorem laborum id sint et mollit non.',
                    //     '2015',
                    //     '2019'),
                    experience(
                        widget.company,
                        widget.roleincompany,
                        widget.aboutcompany,
                        widget.fromcompany,
                        widget.tocompany),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                width: w * 0.6,
                child:
                    // education(
                    //     'Manipal Institute Of Technology',
                    //     '2014',
                    //     '2015',
                    //     'BTech',
                    //     'Computer And Communication Engineering',
                    //     '8.34'),
                    education(
                        widget.college,
                        widget.fromcollege,
                        widget.fromcompany,
                        widget.degree,
                        widget.specialization,
                        widget.gpa),
              )
            ],
          ),
          Container(
            height: h * 0.5,
            child: VerticalDivider(
              color: HexColor('#c5c9cc'),
              thickness: 2,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: w * 0.30,
                child:
                    // skills(['Python', 'C++', 'Java']),
                    skills(widget.skillsList),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                  width: w * 0.30,
                  child:
                      // social(
                      //     'linkedin.com./gaurangshah', 'github.com/gaurangshah')
                      social(widget.linkedin, widget.github))
            ],
          )
        ],
      )
    ]);
  }

  Widget introduction(String name, String email, String phone) {
    var names = name.split(' ');
    var firstName = names[0];
    var lastName = names[names.length - 1];
    return Container(
      width: w,
      height: h * 0.18,
      color: HexColor("#333e50"),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstName + "    ",
              style: TextStyle(
                  color: HexColor("#c25c17"),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Text(
              lastName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24 * kh * h),
            )
          ],
        ),
        Text(
          phone,
          style: TextStyle(color: Colors.white, fontSize: 15 * kh * h),
        ),
        Text(
          email,
          style: TextStyle(
              color: Colors.white,
              fontSize: 15 * kh * h,
              decoration: TextDecoration.underline),
        )
      ]),
    );
  }

  Widget about(String mainrole,String desc) {
    return Padding(
      padding: EdgeInsets.only(left: 10 * kw * w, right: 10 * kw * w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                mainrole,
                style: TextStyle(
                    fontSize: 17 , fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 14 * kh * h),
          ),
          Container(
              width: w,
              child: Divider(
                color: HexColor('#c5c9cc'),
                thickness: 2,
              ))
        ],
      ),
    );
  }

  Widget experience(
      String company, String role, String about, String from, String to) {
    return Padding(
      padding: EdgeInsets.only(left: 10 * kw * w, right: 10 * kw * w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18 * kh * h),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                from + "  to  " + to,
                style: TextStyle(fontSize: 13, color: HexColor('#979797')),
              )
            ],
          ),
          Text(
            role,
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h),
          ),
          Text(
            company.toUpperCase(),
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h),
          ),
          Text(
            about,
            style: TextStyle(fontSize: 13 * kh * h),
          )
        ],
      ),
    );
  }

  Widget education(String college, String from, String to, String degree,
      String specialization, String gpa) {
    return Padding(
      padding: EdgeInsets.only(left: 10 * kw * w, right: 10 * kw * w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Education',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18 * kh * h),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              from + "  to  " + to,
              style:
                  TextStyle(fontSize: 13 * kh * h, color: HexColor('#979797')),
            )
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          college,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          degree + "  in  " + specialization,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "GPA: " + gpa,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h),
            ),
          ],
        ),
      ]),
    );
  }

  String combineskills(List<String> s) {
    String combine = "";
    for (int i = 0; i < s.length; i++) {
      combine += "\u2022  " + s[i] + "\n";
    }
    return combine;
  }

  Widget skills(List<String> s) {
    return Padding(
      padding: EdgeInsets.only(left: 10 * kw * w, right: 10 * kw * w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18 * kh * h),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          combineskills(s),
          style: TextStyle(fontSize: 13 * kh * h),
        )
      ]),
    );
  }

  Widget social(String linkedin, String github) {
    return Padding(
      padding: EdgeInsets.only(left: 10 * kw * w, right: 10 * kw * w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Socials',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 18 * kh * h),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          linkedin,
          style: TextStyle(fontSize: 13 * kh * h),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          github,
          style: TextStyle(fontSize: 13 * kh * h),
        ),
      ]),
    );
  }
}

  