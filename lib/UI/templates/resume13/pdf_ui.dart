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
      build: (context) => [
            Column(
              children: [
                Container(
                  height: 10,
                  width: double.infinity,
                  color: PdfColors.lightBlueAccent,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: PdfColors.black),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      mainrole,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: PdfColors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 2,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  color: PdfColors.lightBlueAccent,
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: w * 0.50,
                        child: Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWithunderline("PERSONAL PROFILE"),
                            SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              children: [
                                Text(
                                  descperson,
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            //TODO SIKILLLS
                            TitleWithunderline("SKILLS AND ABILITIES"),
                            SizedBox(
                              height: 18,
                            ),
                            // skillrow(skill: "JAVA"),
                            // skillrow(skill: "APP DEVELOPMENT"),
                            // skillrow(skill: "PHP"),
                            //
                            // skillrow(skill: "CODING"),
                            //
                            // skillrow(skill: "FOOTBALL"),
                            for (int i = 0; i < skillsList.length; i++)
                              skillrow(skillsList[i]),

                            SizedBox(
                              height: 20,
                            ),

                            //
                            // //TODO CONTACT
                            TitleWithunderline("CONTACT DETAILS"),
                            SizedBox(
                              height: 20,
                            ),
                            // SizedBox(
                            //   height: 10.h,
                            // ),
                            //
                            contactrow("Mobile", phone),
                            Wrap(
                              children: [
                                contactrow("Email", email),
                              ],
                            ),
                            Wrap(
                              children: [contactrow("LinkdeIn", linkedin)],
                            ),
                            Wrap(
                              children: [
                                contactrow("GitHub", github),
                              ],
                            )
                            // contactrow( "GitHub", github),
                            //
                          ],
                        )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: w * 0.50,
                        child: Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWithunderline("EMPLOYMENT HISTORY"),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  mainrole,
                                  style: TextStyle(
                                      color: PdfColors.black, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  fromcompany + "-" + tocompany,
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  aboutcompany,
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),

                            SizedBox(
                              height: 20,
                            ),

                            //TODO SIKILLLS
                            TitleWithunderline("ACADEMIC PROFILE"),
                            SizedBox(
                              height: 20,
                            ),

                            Wrap(
                              children: [
                                Text(
                                  college,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              fromcollege + "-" + tocollege,
                              style: TextStyle(fontSize: 12),
                            ),
                            Divider(),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              degree,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Wrap(
                              children: [
                                Text(
                                  specialization,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "GPA ${gpa}",
                              style: TextStyle(
                                  fontSize: 12, color: PdfColors.black),
                            ),

                            // //TODO CONTACT
                            // TitleWithunderline( "CONTACT DETAILS"),
                            // SizedBox(
                            //   height: 10.h,
                            // ),
                            //
                            // contactrow( "Mobile", phone),
                            // contactrow( "Email", email),
                            // contactrow( "GitHub", github),
                            // contactrow( "LinkdeIn", linkedin)
                          ],
                        )),
                      ),
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

Widget skillrow(String skill) {
  return Padding(
    padding: const EdgeInsets.only(top: 3),
    child: Row(
      children: [
        Text("-"),
        SizedBox(
          width: 5,
        ),
        Text(
          skill,
          style: TextStyle(fontSize: 10),
        )
      ],
    ),
  );
}

Widget contactrow(String titlle, String val) {
  return Wrap(
    children: [
      Row(
        children: [
          Text(
            titlle,
            style: TextStyle(
                color: PdfColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 11),
          ),
          Text(":-"),
          SizedBox(
            width: 5,
          ),
          Text(
            val,
            style: TextStyle(fontSize: 10, color: PdfColors.black),
          )
        ],
      )
    ],
  );
}

Widget TitleWithunderline(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: PdfColors.black),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        height: 5,
        color: PdfColors.lightBlueAccent,
        width: 40,
      )
    ],
  );
}
