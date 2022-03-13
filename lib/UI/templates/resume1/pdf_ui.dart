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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PdfColors.grey200,
                  border: Border.all(color: PdfColors.grey, width: 1)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 5, bottom: 30, top: 30),
                        width: 175 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topLeft: Radius.circular(50)),
                          color: PdfColors.grey300,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "PROFILE",
                                style: TextStyle(
                                    color: PdfColor.fromHex('#169db3'),
                                    fontSize: 15 ,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    descperson,
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "CONTACT",
                                style: TextStyle(
                                    color: PdfColor.fromHex('#169db3'),
                                    fontSize: 15 ,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PHONE-"),
                                  Text(phone),
                                  SizedBox(
                                    height: 15 ,
                                  ),
                                  Text("EMAIL"),
                                  Text(email)
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 50 ,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(50)),
                          color: PdfColors.grey200,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 60 ,
                            ),
                            Wrap(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      color: PdfColors.black,
                                      fontSize: 28 ,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(mainrole),
                            SizedBox(
                              height: 15 ,
                            ),
                            Text(
                              "EDUCATION",
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontSize: 15 ,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: PdfColor.fromHex('#169db3'),
                            ),
                            Wrap(
                              children: [
                                Text(
                                  college,
                                  style: TextStyle(color: PdfColors.black),
                                )
                              ],
                            ),
                            Text(fromcollege + "-" + tocollege),
                            Text(gpa),
                            SizedBox(
                              height: 15 ,
                            ),
                            Text(
                              "WORK EXPERIENCE",
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontSize: 15 ,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: PdfColor.fromHex('#169db3'),
                            ),
                            Wrap(
                              children: [
                                Text(
                                  company,
                                  style: TextStyle(color: PdfColors.black),
                                )
                              ],
                            ),
                            Text(fromcompany + "-" + tocompany),
                            Text(
                              roleincompany,
                              style: TextStyle(color: PdfColors.black),
                            ),
                            SizedBox(
                              height: 15 ,
                            ),
                            Text(
                              "SKILLS",
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontSize: 15 ,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: PdfColor.fromHex('#169db3'),
                            ),
                            for (int i = 0; i < skillsList.length; i++)
                              Container(
                                margin: EdgeInsets.only(top: 2 ),
                                child: Text(
                                  skillsList[i],
                                  style: TextStyle(color: PdfColors.black),
                                ),
                              )
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10 ,
                      ),
                    ],
                  )
                ],
              ),
            ),
          
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

