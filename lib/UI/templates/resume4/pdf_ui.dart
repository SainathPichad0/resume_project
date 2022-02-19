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
                SizedBox(
                  height: h * 0.01,
                ),
                introduction(
                    'Claude Sizani',
                    'Call Centre Specialist',
                    'gaurangshah4@gmail.com',
                    '7754050674',
                    'linkedin.com/gaurangshah',
                    'github.com/gaurangshah'),
                SizedBox(
                  height: h * 0.03,
                ),
                summary(
                    'gdgaj gfgfdgshfjdgfjadgf jgfhjgfdshfgagdau a agj agfagh hjgj gfaj gja gfj ag'),
                SizedBox(
                  height: h * 0.03,
                ),
                experience(
                    '2012',
                    '2018',
                    'Contact ABC Call Center',
                    'Call Center Agent and Free Mentor',
                    'dhkashdkjashdkj jhsahkdjhsakjdh askjd hdfkhf kjdhgkfjh sfgsyg fshdgfdhg dgsjfdgsh jfgdsjgfdsgf  gjgdsjhgfdhgf hdgs hgfgsh'),
                SizedBox(
                  height: h * 0.03,
                ),
                education(
                    '2008',
                    '2012',
                    'BTech',
                    'Computer and communication engineering',
                    'Manipal Institute of Technolgy',
                    '8.30'),
                SizedBox(
                  height: h * 0.03,
                ),
                skills(['Python', 'C++', 'Java'])
              ],
            )
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
}

Widget introduction(String name, String occupation, String email, String phone,
    String linkedin, String github) {
  return Row(
    children: [
      SizedBox(
        width: w * 0.3,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            occupation,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: [
              // Text('Linkedin-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text(
                linkedin,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Text(
            github,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            phone,
            style: TextStyle(fontSize: 15),
          ),
          Container(
            width: w * 0.7,
            child: Divider(color: PdfColor.fromHex('#000000'), thickness: 1),
          )
        ],
      )
    ],
  );
}

Widget summary(String desc) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: w * 0.3,
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Summary',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
        width: w * 0.7,
        padding: EdgeInsets.only(top: 2),
        child: Text(
          desc,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      )
    ],
  );
}

Widget experience(
    String from, String to, String company, String occupation, String duties) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: w * 0.3,
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Experience',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
          width: w * 0.7,
          padding: EdgeInsets.only(top: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                occupation,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                company,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                from + '-' + to,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: h * 0.0025,
              ),
              Text(
                duties,
                style: TextStyle(fontSize: 13),
              )
            ],
          ))
    ],
  );
}

Widget education(String from, String to, String degree, String specialization,
    String college, String gpa) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.only(left: 10),
        width: w * 0.3,
        child: Text(
          'Education',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      Container(
        width: w * 0.7,
        padding: EdgeInsets.only(top: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree + "  in  " + specialization,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            Text(
              college,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            Text(
              from + '-' + to,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            Text(
              'GPA  ' + gpa,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: h * 0.0025,
            ),
            //Text(desc,style: TextStyle(fontSize: 13),)
          ],
        ),
      )
    ],
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
  return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Container(
      padding: EdgeInsets.only(left: 10),
      width: w * 0.3,
      child: Text(
        'Skills',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
    Container(
      width: w * 0.7,
      // height: h * 0.16,
      padding: EdgeInsets.only(top: 4),
      child: Text(
        combineskills(s),
        style: TextStyle(fontSize: 15),
      ),
    )
  ]);
}
