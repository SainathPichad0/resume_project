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
            //height: h * 0.15,
            padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
            width: double.infinity,
            color: PdfColor(52 / 255, 58 / 255, 70 / 255),
            child: introduction(
                'Ann ',
                ' Amota',
                'Personal Assistant',
                '7754050674',
                'linkedin.com/gaurang77545',
                'gaurangshah4@gmail.com',
                'twitter.com/gaurangshah'),
          ),
          Container(
            // height: h * 0.1,
            padding: EdgeInsets.fromLTRB(
                w * 0.038 * PdfPageFormat.point,
                h * 0.01317 * PdfPageFormat.point,
                w * 0.02546 * PdfPageFormat.point,
                0),
            width: double.infinity,
            child: Text(
              'Eu proident enim non ullamco velit sint consequat anim culpa duis. Anim qui exercitation veniam ut eu. Dolor voluptate aliquip velit in laboris laborum id. skhdkjhs dkas hdkjashdjk ashkdjhsakajdhahdashdkjashd skdhksd hasskdasdhassd fhkjdsfh kjsdhfkjhd fh kdj fhksdhfkjhsdfkjshd kfhsdkhfkds fhksdhfjksd fhsdkfhkjdshfkjshdkfhdskfhkjdsf  fhksdhfkdshkfhdsk f lore',
              maxLines: 5,
              style: TextStyle(fontSize: h * 0.01317),
              overflow: TextOverflow.visible,
            ),
          ),
          infodetailsexperience(
              'Experience',
              '2012',
              'present',
              'Personal Executive Assistant',
              ' Aliquip ex occaecat incididunt velit fds fds fsd fsd fsdfsdfsdfdfd GAURANG SHAHAHAHHA gjhgd jasgdj gsh dgas hgagh jagdhg dhga jsh dgash gd ahgsdh g asdhg ashs gdg djsa dgag d',
              'Kallas.inc'),
          infodetailseducation(
              'Education',
              '2009',
              '2012',
              'Manipal Institute of Technology ',
              'BTech',
              'Computer Science',
              '8.4'),
          skills('Skills', ['Python', 'HTML', 'CSS', 'Git', 'Management'])
        ],
      )
    ],
    //footer: (context) => buildFooter(invoice),
  ));
  return PdfApi.saveDocument(name: 'my_invoice.pdf', pdf: pdf);
}

Widget skillslist(List<String> l) {
  return Container(
    //  height: h * 0.18,
    width: w * 0.70 * PdfPageFormat.point,
    child: ListView.builder(
      itemBuilder: (ctx, item) {
        return Row(
          children: [
            //  Icon(pw.IconData(0xe190,),font: pw.Font.courier()),
            SizedBox(
              width: w * 0.02546 * PdfPageFormat.point,
            ),
            Text(
              l[item],
              overflow: TextOverflow.clip,
              maxLines: 1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.03564 * w * PdfPageFormat.point),
            )
          ],
        );
      },
      itemCount: l.length,
    ),
  );
}

Widget skills(String title, List<String> l) {
  return Column(
    children: [
      Container(
        height: h * 0.05 * PdfPageFormat.point,
        padding: EdgeInsets.fromLTRB(
            w * 0.038 * PdfPageFormat.point,
            h * 0.01317 * PdfPageFormat.point,
            w * 0.02546 * PdfPageFormat.point,
            0),
        width: double.infinity,
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.01976 * h * PdfPageFormat.point),
            ),
            Divider(
              color: PdfColor(52 / 255, 58 / 255, 70 / 255, 255 / 255),
              thickness: 1,
              height: 1,
            ),
          ],
        ),
      ),
      Container(
        //height: h * 0.12,
        // color: Colors.amber,
        padding: EdgeInsets.fromLTRB(w * 0.038 * PdfPageFormat.point, 0,
            w * 0.02546 * PdfPageFormat.point, 0),
        width: double.infinity,
        child: skillslist(l),
      )
    ],
  );
}

Widget introduction(String fname, String lname, String occupation, String phone,
    String linkedin, String email, String twitter) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            fname,
            style: TextStyle(
                fontSize: 0.02634 * h * PdfPageFormat.point,
                color: PdfColor(1, 1, 1, 1)),
          ),
          Text(
            lname,
            style: TextStyle(
                fontSize: 0.02634 * h * PdfPageFormat.point,
                fontWeight: FontWeight.bold,
                color: PdfColor(1, 1, 1, 1)),
          ),
        ],
      ),
      SizedBox(height: 0.00658 * h * PdfPageFormat.point),
      Text(
        'Personal Assistant',
        style: TextStyle(
            fontSize: 0.0158 * h * PdfPageFormat.point,
            color: PdfColor(1, 1, 1)),
      ),
      SizedBox(height: 0.00659 * h * PdfPageFormat.point),
      Column(
        children: [
          Row(
            children: [
              infosec('Phone', spacing(email, phone)),
              SizedBox(
                width: 0.07639 * w * PdfPageFormat.point,
              ),
              infosec('Linkedin', linkedin)
            ],
          ),
          SizedBox(
            height: 0.01317 * h * PdfPageFormat.point,
          ),
          Row(
            children: [
              infosec('Email', email),
              SizedBox(
                width: 0.07639 * w * PdfPageFormat.point,
              ),
              infosec('Twitter', twitter)
            ],
          ),
          SizedBox(
            height: 0.01317 * h * PdfPageFormat.point,
          ),
        ],
      )
    ],
  );
}

Widget infosec(
  String boldone,
  String normalone,
) {
  return Row(
    //mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        boldone,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 0.01317 * h * PdfPageFormat.point,
            color: PdfColor(1, 1, 1)),
      ),
      SizedBox(
        width: 0.005092 * w * PdfPageFormat.point,
      ),
      Text(
        normalone,
        style: TextStyle(
            fontSize: 0.01317 * h * PdfPageFormat.point,
            color: PdfColor(1, 1, 1)),
      ),
    ],
  );
}

String spacing(String email, String phone) {
  int diff = email.length - phone.length;
  for (int i = 0; i < diff - 1; i++) {
    phone += '  ';
  }
  return phone;
}

Widget infodetailsexperience(String title, String fromdate, String todate,
    String occupation, String info, String company) {
  return Column(
    children: [
      Container(
        height: h * 0.05 * PdfPageFormat.point,
        padding: EdgeInsets.fromLTRB(
            w * 0.038 * PdfPageFormat.point,
            h * 0.01317 * PdfPageFormat.point,
            w * 0.02546 * PdfPageFormat.point,
            0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.0197 * h * PdfPageFormat.point),
            ),
            Divider(color: PdfColor(0.5, 0.5, 0.5), thickness: 1, height: 1),
          ],
        ),
      ),
      Container(
        //height: h * 0.20,
        // color: Colors.amber,
        padding: EdgeInsets.fromLTRB(w * 0.038 * PdfPageFormat.point, 0,
            w * 0.02546 * PdfPageFormat.point, 0),
        width: double.infinity,
        child: experience(fromdate, todate, occupation, info, company),
      )
    ],
  );
}

Widget infodetailseducation(String title, String fromdate, String todate,
    String college, String degree, String field, String gpa) {
  return Column(
    children: [
      Container(
        height: h * 0.05 * PdfPageFormat.point,
        padding: EdgeInsets.fromLTRB(
            w * 0.038 * PdfPageFormat.point,
            h * 0.01317 * PdfPageFormat.point,
            w * 0.02546 * PdfPageFormat.point,
            0),
        width: double.infinity,
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.01976 * h * PdfPageFormat.point),
            ),
            Divider(
                color: PdfColor(128 / 255, 128 / 255, 128 / 255),
                thickness: 1,
                height: 1),
          ],
        ),
      ),
      Container(
        // height: h * 0.08,
        // color: Colors.amber,
        padding: EdgeInsets.fromLTRB(w * 0.038 * PdfPageFormat.point, 0,
            w * 0.02546 * PdfPageFormat.point, 0),
        width: double.infinity,
        child:
            experienceeducation(fromdate, todate, college, degree, field, gpa),
      )
    ],
  );
}

Widget experience(
    String fromdate, String todate, String post, String info, String company) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        fromdate + '-' + todate,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 0.01317 * h * PdfPageFormat.point),
      ),
      SizedBox(
        width: 0.05093 * w * PdfPageFormat.point,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 0.01712 * h * PdfPageFormat.point),
          ),
          Text(
            company,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 0.01712 * h * PdfPageFormat.point),
          ),
          Container(
            //  height: h * 0.15,
            width: w * PdfPageFormat.point,
            padding:
                EdgeInsets.fromLTRB(0, 0, 0.02546 * w * PdfPageFormat.point, 0),
            // color: PdfColor(0.5,0.5,0.5),
            child: Text(
              info,
              style: TextStyle(
                fontSize: 0.01317 * h * PdfPageFormat.point,
              ),
              maxLines: 7,
              overflow: TextOverflow.visible,
            ),
          )
        ],
      )
    ],
  );
}

Widget experienceeducation(String fromdate, String todate, String college,
    String degree, String field, String gpa) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        fromdate + '-' + todate,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 0.01317 * h * PdfPageFormat.point),
      ),
      SizedBox(
        width: 0.05092 * w * PdfPageFormat.point,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: w * 0.7 * PdfPageFormat.point,
            padding:
                EdgeInsets.fromLTRB(0, 0, 0.02546 * w * PdfPageFormat.point, 0),
            child: Text(
              degree + '    ' + field + '    ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.01712 * h * PdfPageFormat.point),
            ),
          ),
          Container(
            width: w * 0.7 * PdfPageFormat.point,
            padding:
                EdgeInsets.fromLTRB(0, 0, 0.02546 * w * PdfPageFormat.point, 0),
            child: Text(
              college,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.01712 * h * PdfPageFormat.point),
            ),
          ),
          Container(
              // height: h * 0.1,
              width: w * 0.7,
              padding: EdgeInsets.fromLTRB(
                  0, 0, 0.02546 * w * PdfPageFormat.point, 0),
              child: Row(
                children: [
                  //const Icon(Icons.grade_rounded),
                  // const Icon(IconData(885))
                  Text('GPA :' + gpa)
                ],
              )),
        ],
      )
    ],
  );
}
