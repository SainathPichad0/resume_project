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
      children: [
        Container(
          height: h * 0.24,
          width: double.infinity,
          color: PdfColor.fromHex('#002f5d'),
          child: introduction(
              'Nicole Diaz',
              'Sales Executive',
              '7754050674',
              'gaurangshah4@gmail.com',
              'linkedin.com/gaurangshah',
              'github.com/gaurangshah'),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        about(
            'Quis velit id elit fugiat exercitation. Amet velit tempor labore tempor proident quis pariatur magna. Aute duis non eiusmod est esse non consequat consectetur ea ut dolore reprehenderit adipisicing qui. Occaecat qui duis commodo voluptate anim tempor aliquip duis.'),
        SizedBox(
          height: h * 0.01,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: w * 0.80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  experience(
                      'Progressive Technologies Inc.',
                      'Sales Executive',
                      '2012',
                      'Present',
                      'Laboris consectetur sunt consectetur non nisi culpa cupidatat in adipisicing non aliquip duis ut sit. Minim deserunt cupidatat aliquip laboris non enim sit ipsum do dolor nisi. Aliquip qui velit aute aute est cillum ad occaecat commodo quis eiusmod duis. Aliquip aliqua commodo ipsum exercitation ex consectetur cillum sit nulla occaecat Lorem laboris. Eu non labore laboris reprehenderit velit.'),
                  education(
                      'Manipal Institute Of Technology',
                      "BTech",
                      "Computer And Communication Engineering",
                      "8.34",
                      "2018",
                      "2022")
                ],
              ),
            ),
            Container(
            
              width: w * 0.40,
              height: h * 0.50,
              color: PdfColor.fromHex('#ececec'),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                skills(['Java', 'C++', 'Python'])
              ]),
            )
          ],
        )
      ],
    )
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
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
                color: PdfColors.white, fontWeight: FontWeight.bold, fontSize: 23),
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
                      fontWeight: FontWeight.bold,//w400
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
                      fontWeight: FontWeight.bold,  //w400,
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
                      fontWeight: FontWeight.bold , //w400,
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
      combine +=  s[i] + "\n";
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
