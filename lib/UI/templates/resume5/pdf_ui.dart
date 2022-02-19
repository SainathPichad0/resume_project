import 'dart:io';
import 'package:pdf/pdf.dart';
import 'pdf_api.dart';
import 'package:pdf/widgets.dart'
    as pw; //Note that the widgets like column and all are defined in both material.dart as well as pdf.dart s use either one else conflict might happen
import 'package:pdf/widgets.dart';

// class PdfInvoiceApi {
double h = 0.0;
double w = 0.0;
Future<File> generate(double height, double width) async {
  final pdf = Document();
  h = height;
  w = width;
  pdf.addPage(MultiPage(
      //means we can add multiple widgets here
      build: (context) => [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.01,
                ),
                header('Lucas William', 'Mobile Ui/Ux developer'),
                SizedBox(
                  height: h * 0.05,
                ),
                pw.Container(
                  child: Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: w * 0.45,
                       // color: PdfColor.fromRYB(0.5, 0.5, 0.50),
                        child: Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            contacts(
                                'gaurangshah4@gmail.com',
                                '7754050674',
                                'github.com/gaurangshah',
                                'linkedin.com/gaurangshah'),
                            skills(['Python', 'C++', 'Java']),
                            education(
                                '2017',
                                '2021',
                                'MIT Manipal',
                                'BTech',
                                'Computer And Communication Engineering',
                                '8.34')
                          ],
                        ),
                      ),
                      pw.Container(child:
                      VerticalDivider(
                        color: PdfColor.fromHex('#000000'),
                        thickness: 1,
                      ),
                      height: 600
                      ),
                      Container(
                        width: w * 0.50,
                       // color: PdfColor.fromRYB(0.5, 0.5, 0.50),
                        child: Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            profile(
                                'Officia aliquip sunt non et reprehenderit pariatur anim culpa non laborum Lorem veniam magna. Tempor reprehenderit ullamco ut ea ea non fugiat reprehenderit proident laboris officia. Do consequat cillum laboris aliquip.'),
                            workex(
                                'Call Centre Manager',
                                '2017',
                                '2019',
                                'ABC Call Centre',
                                'Duis sunt consequat tempor velit deserunt. In officia cillum commodo dolore eiusmod labore nulla sit magna magna ad ullamco. Nulla ut laborum irure dolor voluptate anim consectetur proident nostrud nulla aute.')
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
}

Widget header(String name, String occupation) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name.toUpperCase(),
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            occupation.toUpperCase(),
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget contacts(String email, String phone, String github, String linkedin) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child:  Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'CONTACTS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
            width: w * 0.45,
          ),
          Text(
            phone,
            style: TextStyle(fontSize: 12),
          ),
        SizedBox(height: h*0.01,),

          Text(
            email,
            style: TextStyle(fontSize: 12),
          ),
        SizedBox(height: h*0.01,),

          Text(
            linkedin,
            style: TextStyle(fontSize: 12),
          ),
        SizedBox(height: h*0.01,),

          Text(
            github,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  String combine(List<String> s) {
    String combine = "";
    for (int i = 0; i < s.length; i++) {
      combine += s[i] + "\n";
    }
    return combine;
  }

  Widget skills(List<String> s) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'SKILLS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
            width: w * 0.45,
          ),
          Text(
            combine(s),
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget education(String from, String to, String college, String degree,
      String specialization, String gpa) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
            width: w * 0.45,
          ),
          Container(
            child: Text(
              'EDUCATION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
            width: w * 0.45,
          ),
          Text(
            from + '-' + to,
            style: TextStyle(fontSize: 15, color: PdfColor.fromHex('#686868'),),
          ),
        SizedBox(height: h*0.01,),

          Text(
            college.toUpperCase(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        SizedBox(height: h*0.01,),

          Text(
            degree + '  in  ' + specialization,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        SizedBox(height: h*0.01,),

          Text(
            'GPA :' + gpa,
            style: TextStyle(
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }

  Widget profile(String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
          width: w * 0.50,
        ),
        Container(
          child: Text(
            'PROFILE',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        Container(
          child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
          width: w * 0.50,
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Widget workex(
      String title, String from, String to, String company, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
          width: w * 0.50,
        ),
        Container(
          child: Text(
            'WORK EXPERIENCE',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
        Container(
          child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
          width: w * 0.50,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
        ),
        SizedBox(height: h*0.01,),

        Row(
          children: [
            Text(
              from + '-' + to+'    ',
              style: TextStyle(
                fontSize: 12,
                color: PdfColor.fromHex('#686868'),
              ),
            ),
            Text(
              company,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: h*0.01,),
        Text(
          desc,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }

