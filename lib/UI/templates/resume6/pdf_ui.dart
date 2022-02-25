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
                Container(
                  height: h * 0.24,
                  width: double.infinity,
                  color: PdfColor.fromHex('#002f5d'),
                  child: introduction(
                      name, mainrole, phone, email, linkedin, github),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                pw.Container(
                  height: h * 0.50,
                  child: about(descperson),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: w * 0.80,
                      height: h * 0.40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          experience(company, roleincompany, fromcompany,
                              tocompany, aboutcompany),
                          education(college, degree, specialization, gpa,
                              fromcollege, tocollege)
                        ],
                      ),
                    ),
                    Container(
                      width: w * 0.40,
                      height: h * 0.50,
                      color: PdfColor.fromHex('#ececec'),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [skills(skillsList)]),
                    )
                  ],
                )
              ],
            ),
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

Widget introduction(String name, String title, String phone, String email,
    String linkedin, String github) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
              color: PdfColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: PdfColors.white,
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
              color: PdfColor.fromHex('#014281'),
              child: Text(
                'Phone :   ',
                style: TextStyle(
                    color: PdfColors.white,
                    fontWeight: FontWeight.bold, //w400
                    fontSize: 12),
              ),
            ),
            Text(
              '       ' + phone,
              style: TextStyle(color: PdfColors.white, fontSize: 12),
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
              color: PdfColor.fromHex('#014281'),
              child: Text(
                'Email :   ',
                style: TextStyle(
                    color: PdfColors.white,
                    fontWeight: FontWeight.bold, //w400,
                    fontSize: 12),
              ),
            ),
            Text(
              '       ' + email,
              style: TextStyle(color: PdfColors.white, fontSize: 12),
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
              color: PdfColor.fromHex('#014281'),
              child: Text(
                'Linkedin :   ',
                style: TextStyle(
                    color: PdfColors.white,
                    fontWeight: FontWeight.bold, //w400,
                    fontSize: 12),
              ),
            ),
            Text(
              '       ' + linkedin,
              style: TextStyle(
                color: PdfColors.white,
                fontSize: 12,
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
              color: PdfColor.fromHex('#014281'),
              child: Text(
                'Github :   ',
                style: TextStyle(
                    color: PdfColors.white,
                    fontWeight: FontWeight.bold, //w400,
                    fontSize: 12),
              ),
            ),
            Text(
              '       ' + github,
              style: TextStyle(color: PdfColors.white, fontSize: 12),
            )
          ],
        )
      ],
    ),
  );
}

Widget about(String desc) {
  return Padding(
    padding: const EdgeInsets.only(left: 12),
    child: Text(
      desc,
      style: TextStyle(fontSize: 12),
    ),
  );
}

Widget experience(
    String company, String role, String from, String to, String desc) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: h * 0.03,
          width: w * 0.8,
          color: PdfColor.fromHex('#dddddd'),
          padding: EdgeInsets.all(2),
          child: Text(
            'EXPERIENCE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
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
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: w * 0.4,
              child: Text(
                role,
                style: TextStyle(
                  color: PdfColor.fromHex("#808080"),
                  fontSize: 13,
                ),
              ),
            ),
            Text(
              from + "  to  " + to,
              style: TextStyle(
                color: PdfColor.fromHex("#cfcfcf"),
                fontWeight: FontWeight.bold,
                fontSize: 12,
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
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}

Widget education(String college, String degree, String specialization,
    String gpa, String from, String to) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: h * 0.03,
            width: w * 0.8,
            color: PdfColor.fromHex('#dddddd'),
            padding: EdgeInsets.all(2),
            child: Text(
              'EDUCATION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
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
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            degree + '  in  ' + specialization,
            style: TextStyle(
              color: PdfColor.fromHex("#808080"),
              fontSize: 13,
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
                  fontSize: 15,
                ),
              ),
              Text(
                from + "  to  " + to,
                style: TextStyle(
                  color: PdfColor.fromHex("#cfcfcf"),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
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
    combine += s[i] + "\n";
  }
  return combine;
}

Widget skills(List<String> s) {
  return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: h * 0.03,
              width: w * 0.40,
              color: PdfColor.fromHex('#dddddd'),
              padding: EdgeInsets.all(2),
              child: Text(
                'SKILLS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
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
                fontSize: 15,
              ),
            ),
          ]));
}
