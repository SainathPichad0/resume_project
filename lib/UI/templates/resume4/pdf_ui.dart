import 'dart:io';
import 'package:pdf/pdf.dart';
import 'pdf_api.dart';
import 'package:pdf/widgets.dart'
    as pw; //Note that the widgets like column and all are defined in both material.dart as well as pdf.dart s use either one else conflict might happen
import 'package:pdf/widgets.dart';

// class PdfInvoiceApi {
double h = 0.0;
double w = 0.0;
String name = "Elizabeth Holmes";
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
List<String> skillsList = ['Python', 'C++', 'Java'];
Future<File> generate(
    double height,
    double width,
    String nameo,
    String emailo,
    String phoneo,
    String linkedino,
    String mainroleo,
    String githubo,
    String descpersono,
    String companyo,
    String roleo,
    String aboutcompanyo,
    String fromcompanyo,
    String tocompanyo,
    String collegeo,
    String fromcollegeo,
    String tocollegeo,
    String degreeo,
    String specializationo,
    String gpao,
    List<String> skillsListo) async {
  final pdf = Document();
  h = height;
  w = width;
  name = nameo;
  email = emailo;
  phone = phoneo;
  linkedin = linkedino;
  github = githubo;
  mainrole = mainroleo;
  descperson = descpersono;
  company = companyo;
  roleincompany = roleo;
  aboutcompany = aboutcompanyo;
  fromcompany = fromcompanyo;
  tocompany = tocompanyo;
  college = collegeo;
  fromcollege = fromcollegeo;
  tocollege = tocollegeo;
  degree = degreeo;
  specialization = specializationo;
  gpa = gpao;
  skillsList = skillsListo;
  pdf.addPage(MultiPage(
      //means we can add multiple widgets here
      build: (context) => [
            Column(
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
                introduction(name, mainrole, email, phone, linkedin, github),
                SizedBox(
                  height: h * 0.03,
                ),
                // summary(
                //     'gdgaj gfgfdgshfjdgfjadgf jgfhjgfdshfgagdau a agj agfagh hjgj gfaj gja gfj ag'),
                summary(descperson),
                SizedBox(
                  height: h * 0.03,
                ),
                // experience(
                //     '2012',
                //     '2018',
                //     'Contact ABC Call Center',
                //     'Call Center Agent and Free Mentor',
                //     'dhkashdkjashdkj jhsahkdjhsakjdh askjd hdfkhf kjdhgkfjh sfgsyg fshdgfdhg dgsjfdgsh jfgdsjgfdsgf  gjgdsjhgfdhgf hdgs hgfgsh'),
                experience(fromcompany, tocompany, company, roleincompany,
                    aboutcompany),
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
                education(fromcollege, tocollege, degree, specialization,
                    college, gpa),

                SizedBox(
                  height: h * 0.03,
                ),
                //skills(['Python', 'C++', 'Java'])
                skills(skillsList)
              ],
            )
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

Widget introduction(String name, String occupation, String email, String phone,
    String linkedin, String github) {
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            occupation,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: [
              // Text('Linkedin-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text(
                linkedin,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Text(
            github,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            phone,
            style: TextStyle(fontSize: 15),
          ),
          Container(
            width: w * 0.7,
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
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
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Summary',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
        width: w * 0.7,
        padding: EdgeInsets.only(top: 2),
        child: Text(
          desc,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      )
    ],
  );
}

Widget experience(
    String from, String to, String company, String occupation, String duties) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: w * 0.3,
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Experience',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
          width: w * 0.7,
          padding: EdgeInsets.only(top: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                occupation,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                company,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                from + '-' + to,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                duties,
                style: TextStyle(fontSize: 13),
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
        padding: EdgeInsets.only(left: 10),
        width: w * 0.3,
        child: Text(
          'Education',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
        width: w * 0.7,
        padding: EdgeInsets.only(top: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree + "  in  " + specialization,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            Text(
              college,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            Text(
              from + '-' + to,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            Text(
              'GPA  ' + gpa,
              style: TextStyle(fontSize: 15),
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
    combine += s[i] + "\n";
  }
  return combine;
}

Widget skills(List<String> s) {
  return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Container(
      padding: EdgeInsets.only(left: 10),
      width: w * 0.3,
      child: Text(
        'Skills',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
    Container(
      width: w * 0.7,
      // height: h * 0.16,
      padding: EdgeInsets.only(top: 4),
      child: Text(
        combineskills(s),
        style: TextStyle(fontSize: 15),
      ),
    )
  ]);
}
