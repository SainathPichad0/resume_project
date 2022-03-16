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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: w,
                  height: h * 0.2,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  color: PdfColors.black,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: PdfColors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text(
                            mainrole,
                            style: TextStyle(
                                color: PdfColors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    Profile_edu_work(
                        PdfColor.fromHex('#B8CCE4'),
                        PdfColor.fromHex('#355E92'),
                        PdfColors.black,
                        fromcompany,
                        tocompany,
                        fromcollege,
                        tocollege,
                        gpa,
                        descperson,
                        aboutcompany,
                        college,
                        company,
                        roleincompany),
                    Container(
                        height: 500,
                        width: w * 0.50,
                        margin: EdgeInsets.only(right: 10),
                        color: PdfColor.fromHex('#B8CCE4'),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SKILLS",
                                    style: TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(
                                    color: PdfColor.fromHex('#169db3'),
                                  ),
                                  for (int i = 0; i < skillsList.length; i++)
                                    Wrap(
                                      children: [
                                        Text(
                                          skillsList[i],
                                          style:
                                              TextStyle(color: PdfColors.black),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            social_colum(
                              PdfColor.fromHex('#B8CCE4'),
                              phone,
                              email,
                              github,
                              linkedin,
                            ),
                            
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

social_colum(
  PdfColor titlePdfcolor,
  String phone,
  String email,
  String github,
  String linedinn,
) {
  return Container(
    height: h * 0.3,
    width: w * 0.50,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CONTACT",
          style: TextStyle(
              color: titlePdfcolor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        rowofsocial(
          phone,
        ),
        rowofsocial(
          email,
        ),
        rowofsocial(
          github,
        ),
        rowofsocial(
          linkedin,
        )
      ],
    ),
  );
}

Widget rowofsocial(String textof) {
  return Wrap(
    children: [
      Container(
        margin: EdgeInsets.only(top: 3),
        width: w * 0.45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 3,
            ),
            Wrap(
              children: [Text(textof)],
            )
          ],
        ),
      )
    ],
  );
}

Widget Profile_edu_work(
    PdfColor Pdfcolor,
    PdfColor textPdfcolor,
    PdfColor pPdfcolor,
    String fromcompany,
    String tocopany,
    String fromcoleg,
    String tocolege,
    String gpa,
    String description,
    String abooutcompany,
    String collegename,
    String companyname,
    String role) {
  textPdfcolor == PdfColors.red;
  return Container(
    height: 500,
    width: w * 0.50,
    color: Pdfcolor,
    margin: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "PROFILE",
              style: TextStyle(
                  color: textPdfcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: PdfColor.fromHex('#169db3'),
            ),
          ],
        ),
        Wrap(
          children: [
            Text(
              description,
              style: TextStyle(color: pPdfcolor),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "EDUCATION",
          style: TextStyle(
              color: textPdfcolor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Divider(
          color: PdfColor.fromHex('#169db3'),
        ),
        Wrap(
          children: [
            Text(
              collegename,
              style: TextStyle(color: pPdfcolor),
            )
          ],
        ),
        Text(
          fromcoleg + "-" + tocolege,
          style: TextStyle(color: pPdfcolor),
        ),
        Text(
          "GPA-" + gpa,
          style: TextStyle(color: pPdfcolor),
        ),

        SizedBox(
          height: 15,
        ),

        // Text(
        //   "SKILLS",
        //   style: TextStyle(
        //       Pdfcolor: PdfPdfPdfPdfColors.black,
        //       fontSize: 15,
        //       fontWeight: FontWeight.bold),
        // ),
        // Divider(
        //   Pdfcolor: PdfPdfColor.fromHex('#169db3'),
        // ),
        // Text("SKILL1"),
        // Text("SKILL1"),
        // Text("SKILL1"),
      ],
    ),
  );
}
