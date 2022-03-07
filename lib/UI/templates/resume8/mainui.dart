import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
import 'dart:io';

class ResumeUI8 extends StatefulWidget {
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

  ResumeUI8({
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
  _ResumeUI8State createState() => _ResumeUI8State();
}

class _ResumeUI8State extends State<ResumeUI8> {
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
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: w * 0.43,
            height: h,
            color: HexColor('#434341'),
            child: introduction(widget.name, widget.mainrole, widget.email,
                widget.phone, widget.github, widget.linkedin),
          ),
          Container(
            width: w * 0.55,
            padding: EdgeInsets.only(left: 8*kw*w, top: 8*kh*h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                about(widget.descperson),
                experience(widget.company, widget.roleincompany,
                    widget.aboutcompany, widget.fromcompany, widget.tocompany),
                education(widget.college, widget.fromcollege, widget.tocollege,
                    widget.degree, widget.specialization, widget.gpa),
                skills(widget.skillsList)
              ],
            ),
          )
        ],
      )
    ]);
  }

  Widget introduction(String name, String mainrole, String email, String phone,
      String github, String linkedin) {
    var names = name.split(' ');
    var firstName = names[0];
    var lastName = names[names.length - 1];
    return Padding(
      padding:  EdgeInsets.only(left: 8*kw*w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                firstName.toUpperCase(),
                style: TextStyle(
                    color: HexColor('#9d8a6b'),
                    letterSpacing: 3*kw*w,
                    fontSize: 20*kh*h,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                lastName.toUpperCase(),
                style: TextStyle(
                    color: HexColor('#9d8a6b'),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3*kw*w,
                    fontSize: 20*kh*h),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                mainrole.toUpperCase(),
                style: TextStyle(
                    color: Colors.white, fontSize: 12*kh*h, letterSpacing: 2*kw*w),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'CONTACTS',
                style: TextStyle(
                    color: HexColor('#9d8a6b'),
                    fontSize: 15*kh*h,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              email,
              style: TextStyle(
                fontSize: 11*kh*h,
                color: Color.fromARGB(255, 41, 23, 23),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            github,
            style: TextStyle(
              fontSize: 11*kh*h,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            linkedin,
            style: TextStyle(fontSize: 11*kh*h, color: Colors.white),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 11*kh*h, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget about(String descperson) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'PROFILE',
          style: TextStyle(fontSize: 20*kh*h,fontWeight: FontWeight.bold,color: HexColor('#9d8a6b'),),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        Text(
          descperson,
          style: TextStyle(fontSize: 12*kh*h),
        )
      ],
    );
  }

  Widget experience(
      String company, String role, String about, String from, String to) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'EXPERIENCE',
              style: TextStyle(
                  // color: Colors.green,
                  color: HexColor('#9d8a6b'),
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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h,),
        ),
        Text(
          company.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h),
        ),
        Text(
          about,
          style: TextStyle(fontSize: 13 * kh * h,color: HexColor('#9d8a6b')),
        )
      ],
    );
  }

  Widget education(String college, String from, String to, String degree,
      String specialization, String gpa) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'EDUCATION',
            style: TextStyle(
                //color: Colors.green,
                fontWeight: FontWeight.bold,
                color: HexColor('#9d8a6b'),
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
            style: TextStyle(fontSize: 13 * kh * h, color: HexColor('#979797')),
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
                TextStyle(fontWeight: FontWeight.bold, fontSize: 13 * kh * h,color: HexColor('#9d8a6b')),
          ),
        ],
      ),
    ]);
  }

  String combineskills(List<String> s) {
    String combine = "";
    for (int i = 0; i < s.length; i++) {
      combine += "\u2022  " + s[i] + "\n";
    }
    return combine;
  }

  Widget skills(List<String> s) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
                //color: Colors.green,
                color: HexColor('#9d8a6b'),
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
        style: TextStyle(fontSize: 15 * kh * h),
      )
    ]);
  }
}
