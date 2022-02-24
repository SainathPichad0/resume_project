import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';

class ResumeUI6permute2 extends StatefulWidget {
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

  ResumeUI6permute2({
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
  _ResumeUI6permute2State createState() => _ResumeUI6permute2State();
}

class _ResumeUI6permute2State extends State<ResumeUI6permute2> {
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
      //color: HexColor(''),
      child: ListView(
        children: [
          Container(
              height: h * 0.24,
              width: double.infinity,
              color: HexColor('#C6ECCF'),
              //HexColor('#DB9B0B'),
              child:
                  //  introduction(
                  //     'Nicole Diaz',
                  //     'Sales Executive',
                  //     '7754050674',
                  //     'gaurangshah4@gmail.com',
                  //     'linkedin.com/gaurangshah',
                  //     'github.com/gaurangshah'),
                  introduction(widget.name, widget.mainrole, widget.phone,
                      widget.email, widget.linkedin, widget.github)),
          SizedBox(
            height: h * 0.02,
          ),
          // about(
          //     'Quis velit id elit fugiat exercitation. Amet velit tempor labore tempor proident quis pariatur magna. Aute duis non eiusmod est esse non consequat consectetur ea ut dolore reprehenderit adipisicing qui. Occaecat qui duis commodo voluptate anim tempor aliquip duis.'),
          about(widget.descperson),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: w * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // experience(
                    //     'Progressive Technologies Inc.',
                    //     'Sales Executive',
                    //     '2012',
                    //     'Present',
                    //     'Laboris consectetur sunt consectetur non nisi culpa cupidatat in adipisicing non aliquip duis ut sit. Minim deserunt cupidatat aliquip laboris non enim sit ipsum do dolor nisi. Aliquip qui velit aute aute est cillum ad occaecat commodo quis eiusmod duis. Aliquip aliqua commodo ipsum exercitation ex consectetur cillum sit nulla occaecat Lorem laboris. Eu non labore laboris reprehenderit velit.'),
                    experience(
                        widget.company,
                        widget.roleincompany,
                        widget.fromcompany,
                        widget.tocompany,
                        widget.aboutcompany),
                    // education(
                    //     'Manipal Institute Of Technology',
                    //     "BTech",
                    //     "Computer And Communication Engineering",
                    //     "8.34",
                    //     "2018",
                    //     "2022")
                    education(
                        widget.college,
                        widget.degree,
                        widget.specialization,
                        widget.gpa,
                        widget.fromcollege,
                        widget.tocollege)
                  ],
                ),
              ),
              Container(
                width: w * 0.40,
                height: h * 0.50,
                color: HexColor('#ececec'),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  //skills(['Java', 'C++', 'Python'])
                  skills(widget.skillsList)
                ]),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget introduction(String name, String title, String phone, String email,
      String linkedin, String github) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0 * kw * w, top: 10 * kh * h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
                color:Colors.blueGrey,
                // Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23 * kh * h),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
                color:Colors.blueGrey
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            children: [
              Container(
                width: w * 0.17,
                height: h * 0.025,
                //  padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                color:Colors.blueAccent,
                child: Text(
                  'Phone :   ',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 12 * kh * h),
                ),
              ),
              Text(
                '       ' + phone,
                style: TextStyle(color: Colors.blueGrey, fontSize: 12 * kh * h,),
              )
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            children: [
              Container(
                width: w * 0.17,
                height: h * 0.025,
                //  padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Text(
                  'Email :   ',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 12 * kh * h),
                ),
              ),
              Text(
                '       ' + email,
                style: TextStyle(color: Colors.blueGrey, fontSize: 12 * kh * h),
              )
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            children: [
              Container(
                width: w * 0.17,
                height: h * 0.025,
                //  padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Text(
                  'Linkedin :   ',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      
                      fontWeight: FontWeight.w400,
                      fontSize: 12 * kh * h),
                ),
              ),
              Text(
                '       ' + linkedin,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12 * kh * h,
                ),
              )
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            children: [
              Container(
                width: w * 0.17,
                height: h * 0.025,
                //  padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                color:Colors.blueAccent,
                child: Text(
                  'Github :   ',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 12 * kh * h),
                ),
              ),
              Text(
                '       ' + github,
                style: TextStyle(color: Colors.blueGrey, fontSize: 12 * kh * h),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget about(String desc) {
    return Padding(
      padding: EdgeInsets.only(left: 12 * kw * w),
      child: Text(
        desc,
        style: TextStyle(fontSize: 12 * kh * h),
      ),
    );
  }

  Widget experience(
      String company, String role, String from, String to, String desc) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0 * kw * w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: h * 0.03,
            width: w * 0.6,
            color: HexColor('#dddddd'),
            padding: EdgeInsets.all(2 * kh * h),
            child: Text(
              'EXPERIENCE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15 * kh * h,
              ),
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            company,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15 * kh * h,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: w * 0.3,
                child: Text(
                  role,
                  style: TextStyle(
                    color: HexColor("#808080"),
                    fontSize: 13 * kh * h,
                  ),
                ),
              ),
              Text(
                from + "  to  " + to,
                style: TextStyle(
                  color: HexColor("#cfcfcf"),
                  fontWeight: FontWeight.bold,
                  fontSize: 12 * kh * h,
                ),
              )
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            desc,
            style: TextStyle(
              fontSize: 13 * kh * h,
            ),
          ),
        ],
      ),
    );
  }

  Widget education(String college, String degree, String specialization,
      String gpa, String from, String to) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0 * kw * w),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: h * 0.03,
              width: w * 0.6,
              color: HexColor('#dddddd'),
              padding: EdgeInsets.all(2 * kh * h),
              child: Text(
                'EDUCATION',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15 * kh * h,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Text(
              college,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15 * kh * h,
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Text(
              degree + '  in  ' + specialization,
              style: TextStyle(
                color: HexColor("#808080"),
                fontSize: 13 * kh * h,
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GPA: ' + gpa,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15 * kh * h,
                  ),
                ),
                Text(
                  from + "  to  " + to,
                  style: TextStyle(
                    color: HexColor("#cfcfcf"),
                    fontWeight: FontWeight.bold,
                    fontSize: 12 * kh * h,
                  ),
                )
              ],
            ),
            SizedBox(
              height: h * 0.01,
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
        padding: EdgeInsets.only(left: 12.0 * kw * w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: h * 0.03,
                width: w * 0.40,
                color: HexColor('#dddddd'),
                padding: EdgeInsets.all(2 * kh * h),
                child: Text(
                  'SKILLS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15 * kh * h,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Text(
                combineskills(s),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15 * kh * h,
                ),
              ),
            ]));
  }
}
