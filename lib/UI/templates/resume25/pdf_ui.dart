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
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 70 * MediaQuery.of(context).size.height / 600,
                  height: 100,

                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
//todo name row
                                    Row(
                                      children: [
//TODO FIRST NAME CAMPTIAL
                                        Text(
                                          name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              color:
                                                  PdfColor.fromHex('#42A78E'),
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),

                                    Text(
                                      mainrole,
                                      style: TextStyle(
                                          letterSpacing: 1, fontSize: 12),
                                    )
//todo role
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      //todo mphone github linked email
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    social_row_25(phone),
                                    social_row_25(email),
                                    social_row_25(linkedin),
                                    social_row_25(github)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Expanded(
                            child: Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  titletext('EDUCATION'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    specialization,
                                    style: TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    college,
                                    style: TextStyle(
                                      color: PdfColors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    fromcollege + "-" + tocollege,
                                    style: TextStyle(
                                      color: PdfColors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: PdfColor.fromHex('#42A78E'),
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  titletext("KEY SKILLS"),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  for (int i = 0; i < skillsList.length; i++)
                                    skill(skillsList[i]),
                                  //
                                  // skilll_row(skill: skillsList[0]),
                                  // skilll_row(skill: skillsList[1] ),
                                  // skilll_row(skill:  skillsList[2]),
                                  // skilll_row(skill: "AI/ML"),
                                  // skilll_row(skill: "PROBLEM SOLVING"),
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              titletext("CAREER SUMMARY"),
                              SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    descperson,
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(
                                color: PdfColor.fromHex('#42A78E'),
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              titletext("EXPERIENCE"),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      roleincompany.toUpperCase(),
                                      style: TextStyle(
                                        color: PdfColors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          company,
                                          style: TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          fromcompany + "-" + tocompany,
                                          style: TextStyle(
                                            color: PdfColors.black,
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      aboutcompany,
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ],
            )
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

Widget social_row_25(String textof) {
  return Expanded(
      child: Container(
    margin: EdgeInsets.only(top: 2),
    child: Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Text(textof)
      ],
    ),
  ));
}

titletext(String x) {
  return Text(
    x,
    style: TextStyle(
      letterSpacing: 1,
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: PdfColor.fromHex('#42A78E'),
    ),
  );
}

Widget skill(String skills) {
  return Container(
      margin: EdgeInsets.only(top: 6),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          SizedBox(
            width: 4,
          ),
          Text(skills,style: TextStyle(
            fontSize: 10,letterSpacing: 1
          ),)
        ],
      ),
    );
}
