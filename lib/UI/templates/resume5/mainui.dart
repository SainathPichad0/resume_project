import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double h = 0.0, w = 0.0;
  double kh = 1/759.2727272727273, kw = 1/392.72727272727275;
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
                final pdfFile = await generate(759.27,
                    392.72); //This generates a file and stores in pdfFile
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: h * 0.01,
        ),
        header('Lucas William', 'Mobile Ui/Ux developer'),
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
                    contacts('gaurangshah4@gmail.com', '7754050674',
                        'github.com/gaurangshah', 'linkedin.com/gaurangshah'),
                    skills(['Python', 'C++', 'Java']),
                    education('2017', '2021', 'MIT Manipal', 'BTech',
                        'Computer And Communication Engineering', '8.34')
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
                    profile(
                        'Officia aliquip sunt non et reprehenderit pariatur anim culpa non laborum Lorem veniam magna. Tempor reprehenderit ullamco ut ea ea non fugiat reprehenderit proident laboris officia. Do consequat cillum laboris aliquip.'),
                    workex(
                        'Call Centre Manager',
                        '2017',
                        '2019',
                        'ABC Call Centre',
                        'Duis sunt consequat tempor velit deserunt. In officia cillum commodo dolore eiusmod labore nulla sit magna magna ad ullamco. Nulla ut laborum irure dolor voluptate anim consectetur proident nostrud nulla aute.')
                  ],
                ),
              ),
            ],
          ),
        )
      ],
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
                fontSize: 30*kh*h, fontWeight: FontWeight.bold, letterSpacing: 2*kw*w),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            occupation.toUpperCase(),
            style: TextStyle(
              fontSize: 18*kh*h,
            ),
          ),
        ],
      ),
    );
  }

  Widget contacts(String email, String phone, String github, String linkedin) {
    return Padding(
      padding:  EdgeInsets.only(left: 20*kw*w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Divider(color: Colors.black, thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'CONTACTS',
              style: TextStyle(
                fontSize: 18*kh*h,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            child: const Divider(color: Colors.black, thickness: 1),
            width: w * 0.45,
          ),
          Text(
            phone,
            style: TextStyle(fontSize: 12*kh*h),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            email,
            style: TextStyle(fontSize: 12*kh*h),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            linkedin,
            style: TextStyle(fontSize: 12*kh*h),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            github,
            style: TextStyle(fontSize: 12*kh*h),
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
      padding:  EdgeInsets.only(left: 20*kw*w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Divider(color: Colors.black, thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'SKILLS',
              style: TextStyle(
                fontSize: 18*kh*h,
                fontWeight: FontWeight.bold,
                letterSpacing: 2*kw*w,
              ),
            ),
          ),
          Container(
            child: const Divider(color: Colors.black, thickness: 1),
            width: w * 0.45,
          ),
          Text(
            combine(s),
            style: TextStyle(fontSize: 15*kh*h),
          ),
        ],
      ),
    );
  }

  Widget education(String from, String to, String college, String degree,
      String specialization, String gpa) {
    return Padding(
      padding:  EdgeInsets.only(left: 20*kw*w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Divider(color: Colors.black, thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'EDUCATION',
              style: TextStyle(
                fontSize: 18*kh*h,
                fontWeight: FontWeight.bold,
                letterSpacing: 2*kw*w,
              ),
            ),
          ),
          Container(
            child: const Divider(color: Colors.black, thickness: 1),
            width: w * 0.45,
          ),
          Text(
            from + '-' + to,
            style: TextStyle(fontSize: 15*kh*h, color: HexColor('#686868')),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            college.toUpperCase(),
            style: TextStyle(
              fontSize: 15*kh*h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            degree + '  in  ' + specialization,
            style: TextStyle(
              fontSize: 15*kh*h,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            'GPA :' + gpa,
            style: TextStyle(
              fontSize: 15*kh*h,
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
          child: const Divider(color: Colors.black, thickness: 1),
          width: w * 0.50,
        ),
        Container(
          child: Text(
            'PROFILE',
            style: TextStyle(
              fontSize: 18*kh*h,
              fontWeight: FontWeight.bold,
              letterSpacing: 2*kw*w,
            ),
          ),
        ),
        Container(
          child: const Divider(color: Colors.black, thickness: 1),
          width: w * 0.50,
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 15*kh*h),
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
          child: const Divider(color: Colors.black, thickness: 1),
          width: w * 0.50,
        ),
        Container(
          child: Text(
            'WORK EXPERIENCE',
            style: TextStyle(
              fontSize: 18*kh*h,
              fontWeight: FontWeight.bold,
              letterSpacing: 2*kw*w,
            ),
          ),
        ),
        Container(
          child: const Divider(color: Colors.black, thickness: 1),
          width: w * 0.50,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15*kh*h, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          children: [
            Text(
              from + '-' + to + '    ',
              style: TextStyle(
                fontSize: 12*kh*h,
                color: HexColor('#686868'),
              ),
            ),
            Text(
              company,
              style: TextStyle(fontSize: 12*kh*h, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 15*kh*h),
        )
      ],
    );
  }
}
