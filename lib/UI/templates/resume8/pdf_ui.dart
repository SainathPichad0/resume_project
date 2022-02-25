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
            pw.Wrap(children: [
              Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: w * 0.43,
                      //height: h,
                      color: PdfColor.fromHex('#434341'),
                      child: introduction(
                          name, mainrole, email, phone, github, linkedin),
                    ),
                    Container(
                      width: w * 0.55,
                      //height: h,
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          about(descperson),
                          experience(company, roleincompany, aboutcompany,
                              fromcompany, tocompany),
                          education(college, fromcollege, tocollege, degree,
                              specialization, gpa),
                          skills(skillsList)
                        ],
                      ),
                    )
                  ],
                )
              ])
            ])
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

Widget introduction(String name, String mainrole, String email, String phone,
    String github, String linkedin) {
  var names = name.split(' ');
  var firstName = names[0];
  var lastName = names[names.length - 1];
  return pw.Container(
    padding: const EdgeInsets.only(left: 8),
    height: 0.90*h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              firstName.toUpperCase(),
              style: TextStyle(
                  color: PdfColor.fromHex('#9d8a6b'),
                  letterSpacing: 3,
                  fontSize: 20,
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
                  color: PdfColor.fromHex('#9d8a6b'),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  fontSize: 20),
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
                  color: PdfColors.white, fontSize: 12, letterSpacing: 2),
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
                  color: PdfColor.fromHex('#9d8a6b'),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.03,
        ),
        Text(
          email,
          style: TextStyle(
            fontSize: 11,
            color: PdfColors.white,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          github,
          style: TextStyle(
            fontSize: 11,
            color: PdfColors.white,
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          linkedin,
          style: TextStyle(fontSize: 11, color: PdfColors.white),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          email,
          style: TextStyle(fontSize: 11, color: PdfColors.white),
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
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: PdfColor.fromHex('#9d8a6b'),
        ),
      ),
      SizedBox(
        height: h * 0.02,
      ),
      Text(
        descperson,
        style: TextStyle(fontSize: 12),
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
                // color: PdfColors.green,
                color: PdfColor.fromHex('#9d8a6b'),
                fontWeight: FontWeight.bold,
                fontSize: 18),
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
            style: TextStyle(fontSize: 13, color: PdfColor.fromHex('#979797')),
          )
        ],
      ),
      Text(
        role,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
      Text(
        company.toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      ),
      Text(
        about,
        style: TextStyle(fontSize: 13, color: PdfColor.fromHex('#9d8a6b')),
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
              //color: PdfColors.green,
              fontWeight: FontWeight.bold,
              color: PdfColor.fromHex('#9d8a6b'),
              fontSize: 18),
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
          style: TextStyle(fontSize: 13, color: PdfColor.fromHex('#979797')),
        )
      ],
    ),
    SizedBox(
      height: h * 0.01,
    ),
    Text(
      college,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
    ),
    SizedBox(
      height: h * 0.01,
    ),
    Text(
      degree + "  in  " + specialization,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
    ),
    SizedBox(
      height: h * 0.01,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "GPA: " + gpa,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: PdfColor.fromHex('#9d8a6b')),
        ),
      ],
    ),
  ]);
}

String combineskills(List<String> s) {
  String combine = "";
  for (int i = 0; i < s.length; i++) {
    combine += s[i] + "\n";
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
              //color: PdfColors.green,
              color: PdfColor.fromHex('#9d8a6b'),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ],
    ),
    SizedBox(
      height: h * 0.01,
    ),
    Text(
      combineskills(s),
      style: TextStyle(fontSize: 15),
    )
  ]);
}
