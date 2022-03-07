import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
class ResumeUI4 extends StatefulWidget {
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
   ResumeUI4({Key? key,required this.name,
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
    required this.skillsList,}) : super(key: key);

  @override
  _ResumeUI4State createState() => _ResumeUI4State();
}

class _ResumeUI4State extends State<ResumeUI4> {
  double h = 0.0, w = 0.0; double kh = 1 / 759.2727272727273, kw = 1 / 392.72727272727275;
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
                    392.72,widget.name,
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
    return ListView(
      children: [
        SizedBox(
          height: h * 0.01,
        ),
        // introduction(
        //     'Claude Sizani',
        //     'Call Centre Specialist',
        //     'gaurangshah4@gmail.com',
        //     '7754050674',
        //     'linkedin.com/gaurangshah',
        //     'github.com/gaurangshah'),
        introduction(widget.name, widget.mainrole ,widget.email, widget.phone, widget.linkedin, widget.github),
        SizedBox(
          height: h * 0.03,
        ),
        // summary(
        //     'gdgaj gfgfdgshfjdgfjadgf jgfhjgfdshfgagdau a agj agfagh hjgj gfaj gja gfj ag'),
        summary(widget.descperson),
        SizedBox(
          height: h * 0.03,
        ),
        // experience(
        //     '2012',
        //     '2018',
        //     'Contact ABC Call Center',
        //     'Call Center Agent and Free Mentor',
        //     'dhkashdkjashdkj jhsahkdjhsakjdh askjd hdfkhf kjdhgkfjh sfgsyg fshdgfdhg dgsjfdgsh jfgdsjgfdsgf  gjgdsjhgfdhgf hdgs hgfgsh'),
        experience(widget.fromcompany, widget.tocompany, widget.company, widget.roleincompany, widget.aboutcompany),
        SizedBox(
          height: h * 0.03,
        ),
        // education(
        //     '2008',
        //     '2012',
        //     'BTech',
        //     'Computer and communication engineering',
        //     'Manipal Institute of Technolgy',
        //     '8.30'),
        education(widget.fromcollege, widget.tocollege, widget.degree, widget.specialization, widget.college, widget.gpa),
        SizedBox(
          height: h * 0.03,
        ),
        // skills(['Python', 'C++', 'Java'])
        skills(widget.skillsList)
      ],
    );
  }

  Widget introduction(String name, String occupation, String email,
      String phone, String linkedin, String github) {
    return Row(
      children: [
        SizedBox(
          width: w * 0.3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: h*0.026341),//20
            ),
            Text(
              occupation,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: h*0.026341),
            ),
            Row(
              children: [
                // Text('Linkedin-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text(
                  linkedin,
                  style: TextStyle(fontSize:h*0.019758 ),//15
                ),
              ],
            ),
            Text(
              github,
              style: TextStyle(fontSize: h*0.019758 ),
            ),
            Text(
              email,
              style: TextStyle(fontSize:  h*0.019758),
            ),
            Text(
              phone,
              style: TextStyle(fontSize:  h*0.019758),
            ),
            Container(
              width: w * 0.7,
              child: const Divider(color: Colors.black, thickness: 1),
            )
          ],
        )
      ],
    );
  }

  Widget summary(String desc) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: w * 0.3,
          padding: EdgeInsets.only(left: 0.02563*w),//10
          child: Text(
            'Summary',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: h*0.026341),
          ),
        ),
        Container(
          width: w * 0.7,
          padding: EdgeInsets.only(top: 0.002634*h),
          child: Text(
            desc,
            style: TextStyle(
              fontSize: h*0.019758,
            ),
          ),
        )
      ],
    );
  }

  Widget experience(String from, String to, String company, String occupation,
      String duties) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: w * 0.3,
          padding: EdgeInsets.only(left: 0.02546*w),
          child: Text(
            'Experience',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize:h*0.026341),
          ),
        ),
        Container(
            width: w * 0.7,
            padding: EdgeInsets.only(top: 0.002634*h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  occupation,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.02371*h),
                ),
                SizedBox(
                  height: h * 0.0025,
                ),
                Text(
                  company,
                  style: TextStyle(fontSize: h*0.019758),
                ),
                SizedBox(
                  height: h * 0.0025,
                ),
                Text(
                  from + '-' + to,
                  style: TextStyle(fontSize: h*0.019758),
                ),
                SizedBox(
                  height: h * 0.0025,
                ),
                Text(
                  duties,
                  style: TextStyle(fontSize: h*0.01712),
                )
              ],
            ))
      ],
    );
  }

  Widget education(String from, String to, String degree, String specialization,
      String college, String gpa) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 0.02546*w),
          width: w * 0.3,
          child: Text(
            'Education',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.02634*h),
          ),
        ),
        Container(
          width: w * 0.7,
          padding: EdgeInsets.only(top: 0.002634*h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                degree + "  in  " + specialization,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.02371*h),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                college,
                style: TextStyle(fontSize:0.019756*h),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                from + '-' + to,
                style: TextStyle(fontSize: 0.019756*h),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                'GPA  ' + gpa,
                style: TextStyle(fontSize: 0.019756*h),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              //Text(desc,style: TextStyle(fontSize: 13),)
            ],
          ),
        )
      ],
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
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.only(left: 0.02546*w),
        width: w * 0.3,
        child: Text(
          'Skills',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.02634*h),
        ),
      ),
      Container(
        width: w * 0.7,
        // height: h * 0.16,
        padding: EdgeInsets.only(top: 0.005268*h),
        child: Text(
          combineskills(s),
          style: TextStyle(fontSize: 0.019756*h),
        ),
        // ListView.builder(
        //   itemBuilder: (ctx, item) {
        //     return Text(
        //       s[item],
        //       style: TextStyle(fontSize: 13),
        //     );
        //   },
        //   itemCount: s.length,
        // ),
      )
    ]);
  }
}
