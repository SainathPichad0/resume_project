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
Future<File> generate(double height, double width,String nameo,
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
            Column(children: [
              // introduction(
              //     "Elizabeth Holmes", "gaurangshah4@gmail.com", "7754050674"),
      introduction(name, email, phone),

              SizedBox(
                height: h * 0.01,
              ),
              // about('Sales Executive',
              //     'Ut ea dolore duis qui tempor veniam do aliquip reprehenderit dolor nostrud. Officia excepteur tempor pariatur labore laborum do tempor. Laboris laboris cupidatat non qui ut cupidatat nostrud nostrud quis duis quis velit. Minim voluptate occaecat in reprehenderit quis in aliqua irure fugiat ea. In velit veniam enim sit officia sit pariatur pariatur.'),
      about(mainrole,descperson),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: w * 0.6,
                        child:
                        //  experience(
                        //     'LUXURY CAR CENTRE',
                        //     'Store Manager',
                        //     'Ipsum elit non consequat fugiat irure ex anim exercitation ullamco cupidatat. Excepteur excepteur nisi dolore nostrud officia consectetur esse. Ipsum tempor proident sunt consectetur est id duis amet aute ut aute. Qui qui Lorem laborum id sint et mollit non.',
                        //     '2015',
                        //     '2019'),
                         experience(
                        company,
                        roleincompany,
                        aboutcompany,
                        fromcompany,
                        tocompany),
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
                        college,
                        fromcollege,
                        fromcompany,
                        degree,
                        specialization,
                        gpa),
                      )
                    ],
                  ),
                  Container(
                    height: h * 0.5,
                    child: VerticalDivider(
                      color: PdfColor.fromHex('#c5c9cc'),
                      thickness: 2,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: w * 0.30,
                          child: skills(skillsList),
                      ),
                          //skills(['Python', 'C++', 'Java'])),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                          width: w * 0.30,
                          child: social(linkedin, github))
                          // social('linkedin.com./gaurangshah',
                          //     'github.com/gaurangshah')
                              
                    ],
                  )
                ],
              )
            ])
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
}

Widget introduction(String name, String email, String phone) {
  var names = name.split(' ');
  var firstName = names[0];
  var lastName = names[names.length - 1];
  return Container(
    width: double.infinity,
    height: h * 0.18,
    color: PdfColor.fromHex("#333e50"),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstName + "    ",
            style: TextStyle(
                color: PdfColor.fromHex("#c25c17"),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          Text(
            lastName,
            style: TextStyle(
                color: PdfColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          )
        ],
      ),
      Text(
        phone,
        style: TextStyle(color: PdfColors.white, fontSize: 15),
      ),
      Text(
        email,
        style: TextStyle(
            color: PdfColors.white,
            fontSize: 15,
            decoration: TextDecoration.underline),
      )
    ]),
  );
}

Widget about(String mainrole,String desc) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
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
          style: TextStyle(fontSize: 14),
        ),
        Container(
            width: w,
            child: Divider(
              color: PdfColor.fromHex('#c5c9cc'),
              thickness: 2,
            ))
      ],
    ),
  );
}

Widget experience(
    String company, String role, String about, String from, String to) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Experience',
              style: TextStyle(
                  color: PdfColors.green,
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
              style:
                  TextStyle(fontSize: 13, color: PdfColor.fromHex('#979797')),
            )
          ],
        ),
        Text(
          role,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        Text(
          company.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        Text(
          about,
          style: TextStyle(fontSize: 13),
        )
      ],
    ),
  );
}

Widget education(String college, String from, String to, String degree,
    String specialization, String gpa) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: TextStyle(
                color: PdfColors.green,
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
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
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
                color: PdfColors.green,
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
        style: TextStyle(fontSize: 13),
      )
    ]),
  );
}

Widget social(String linkedin, String github) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Socials',
            style: TextStyle(
                color: PdfColors.green,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ],
      ),
      SizedBox(
        height: h * 0.01,
      ),
      Text(
        linkedin,
        style: TextStyle(fontSize: 13),
      ),
      SizedBox(
        height: h * 0.01,
      ),
      Text(
        github,
        style: TextStyle(fontSize: 13),
      ),
    ]),
  );
}
