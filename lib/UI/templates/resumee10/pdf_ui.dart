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
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //NAME TOP ROW HEADER
                Container(
                  // margin: EdgeInsets.only(top: 5),
                  height: h*0.1,
                  width: w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.3, color: PdfColors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ),
                            Text(
                              mainrole,
                              style: TextStyle(
                                  color: PdfColors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                    height: h*0.80,
                    width: w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                             Profile_edu_work(
                              PdfColors.black,
                              PdfColors.red,
                              PdfColors.white,
                              gpa,
                              fromcompany,
                              aboutcompany,
                              college,
                              descperson,
                              company,
                              fromcollege,
                              mainrole,
                              tocollege,
                              tocompany,
                            ),
                             Container(
                                  height: h*0.80,
                                  width: w*0.50,
                                  margin: EdgeInsets.only(right: 10),
                                  color: PdfColors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "SKILLS",
                                              style: TextStyle(
                                                  color: PdfColors.red,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                for (int i = 0;
                                                    i < skillsList.length;
                                                    i++)
                                                  Text(
                                                    skillsList[i],
                                                    style: TextStyle(
                                                        color: PdfColors.black),
                                                  )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                      social_colum(
                                        PdfColors.red,
                                        phone,
                                        email,
                                        github,
                                        linkedin,
                                      ),
                                    ],
                                  )),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                
              ],
            )
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
    height: h*0.3,
    width: w*0.50,
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
          email
        ),
        rowofsocial(
          github,
        ),
        rowofsocial(
          linedinn,
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
        //       Pdfcolor: PdfPdfPdfColors.black,
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
