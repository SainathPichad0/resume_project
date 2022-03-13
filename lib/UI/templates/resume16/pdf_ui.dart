import 'dart:io';
import 'package:pdf/pdf.dart';
import 'pdf_api.dart';
import 'package:pdf/widgets.dart'
    as pw; //Note that the widgets like column and all are defined in both material.dart as well as pdf.dart s use either one else conflict might happen
import 'package:pdf/widgets.dart';

// Widget PdfInvoiceApi {
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
      build: (context) => [ Column(
          children: [
            Container(
              height: 100,
              color: PdfColor.fromHex('#98252a'),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    //
                    // CircleAvatar(
                    //   backgroundColor: PdfColors.black,
                    //   child: Icon(
                    //     MdiIcons.human
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              color: PdfColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          mainrole,
                          style: TextStyle(
                              color: PdfColors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialRow_withicon(
                      email),
                  SocialRow_withicon( phone),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialRow_withicon(
                         linkedin),
                    SocialRow_withicon(
                        github),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Titlestyle(
                             "Profile",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Text(
                                descperson,
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Titlestyle( "Employement History"),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    roleincompany.toUpperCase(),
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        company,
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            fromcompany+"-"+tocompany,
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            aboutcompany,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Titlestyle( "Education History"),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Text(
                               college
                                ,
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                          ),
                          Text(
                            specialization,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            fromcollege+"-"+tocollege,
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            gpa,
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "SKILLS",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: PdfColors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          for(int i=0;i<skillsList.length;i++)
                            skill(skillsList[i].toString()),

                          // skill(skills: "Java"),
                          // skill(skills: "Flutter"),
                          // skill(skills: "Python"),
                          // skill(skills: "AI/ML"),
                          // skill(skills: "DSA"),
                          SizedBox(
                            height: 200,
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'resume.pdf', pdf: pdf);
}

Widget skill(String skills) {
  return Container(
    margin: EdgeInsets.only(bottom: 5),
    child: Text(
      skills,
      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    ),
  );
}

Widget Titlestyle(String title) {
  return Text(
    title,
    style: TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color:PdfColors.black),
  );
}

Widget SocialRow_withicon(String val) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 3,
      ),
      Text(
        val,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      )
    ],
  );
}
