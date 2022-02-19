// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;//Note that the widgets like column and all are defined in both material.dart as well as pdf.dart s use either one else conflict might happen
// import 'package:pdf/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_invoice_api.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double h = 0.0, w = 0.0;
  @override
  void initState() {
    super.initState();
  }

  String spacing(String email, String phone) {
    int diff = email.length - phone.length;
    for (int i = 0; i < diff; i++) {
      phone += '  ';
    }
    return phone;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    print('height is' + h.toString() + 'width is' + w.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        actions: [
          TextButton.icon(
              onPressed: () async {
                //Widget w = resumebody();
                final pdfFile = await generate(759.27,
                    392.72); //This generates a file and stores in pdfFile
                //invoice here represents the values which we have to show
                PdfApi.openFile(pdfFile);
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
              label: Text(
                'Generate',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: resumebody(),
    );
  }

  Widget resumebody() {
    return Column(
      children: [
        Container(
          height: h * 0.15,
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
          width: double.infinity,
          color: HexColor('#343a46'),
          child: introduction(
              'Ann',
              ' Amota',
              'Personal Assistant',
              '7754050674',
              'linkedin.com/gaurang77545',
              'gaurangshah4@gmail.com',
              'twitter.com/gaurangshah'),
        ),
        Container(
        //  height: h * 0.1,
          padding: EdgeInsets.fromLTRB(w * 0.038, h * 0.01317, w * 0.02546, 0),
          width: double.infinity,
          child: Text(
            'Eu proident enim non ullamco velit sint consequat anim culpa duis. Anim qui exercitation veniam ut eu. Dolor voluptate aliquip velit in laboris laborum id. skhdkjhs dkas hdkjashdjk ashkdjhsakajdhahdashdkjashd skdhksd hasskdasdhassd fhkjdsfh kjsdhfkjhd fh kdj fhksdhfkjhsdfkjshd kfhsdkhfkds fhksdhfjksd fhsdkfhkjdshfkjshdkfhdskfhkjdsf  fhksdhfkdshkfhdsk f sghdsgfjd fddghf dgfjgshdjh gfhjgfdh fgdgfdghf jgd fjdgfhjdgs fjdghs hfg dsfhdgsjgfjdgfhjdgf',
            maxLines: 5,
            style: TextStyle(fontSize: h * 0.01317),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        infodetailsexperience(
            'Experience',
            '2012',
            'present',
            'Personal Executive Assistant',
            ' Aliquip ex occaecat incididunt velit dolore excepteur incididunt aute deserunt amet. Et laboris aute labore aliqua labore esse consequat voluptate culpa et anim. Est veniam aliqua occaecat fugiat commodo veniam ut velit tempor ad magna. Non irure ullamco dolor pariatur laborum duis. hgjdf dsjfjd gfjds gfjdsf',
            'Kallas.inc'
            ),
        infodetailseducation(
            'Education',
            '2009',
            '2012',
            'Manipal Institute of Technology',
            'BTech',
            'Computer Science',
            '8.4'),
        skills('Skills', ['Python', 'HTML', 'CSS', 'Git', 'Management'])
      ],
    );
  }

  Widget skillslist(List<String> l) {
    return Container(
      height: h * 0.18,
      width: w * 0.70,
      child: ListView.builder(
        itemBuilder: (ctx, item) {
          return Row(
            children: [
              const Icon(Icons.stars_rounded),
              SizedBox(
                width: w * 0.02546,
              ),
              Text(
                l[item],
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 0.03564 * w),
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
          height: h * 0.05,
          padding: EdgeInsets.fromLTRB(w * 0.038, h * 0.01317, w * 0.02546, 0),
          width: w,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 0.01976 * h),
              ),
              const Divider(color: Colors.grey, thickness: 1, height: 1),
            ],
          ),
        ),
        Container(
          //height: h * 0.12,
          // color: Colors.amber,
          padding: EdgeInsets.fromLTRB(w * 0.038, 0, w * 0.02546, 0),
          width: double.infinity,
          child: skillslist(l),
        )
      ],
    );
  }

  Widget introduction(String fname, String lname, String occupation,
      String phone, String linkedin, String email, String twitter) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              fname,
              style: TextStyle(fontSize: 0.02634 * h, color: Colors.white),
            ),
            Text(
              lname,
              style: TextStyle(
                  fontSize: 0.02634 * h,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 0.00658 * h),
        Text(
          'Personal Assistant',
          style: TextStyle(fontSize: 0.0158 * h, color: Colors.white),
        ),
        SizedBox(height: 0.00659 * h),
        Column(
          children: [
            Row(
              children: [
                infosec('Phone', spacing(email, phone)),
                SizedBox(
                  width: 0.07639 * w,
                ),
                infosec('Linkedin', linkedin)
              ],
            ),
            SizedBox(
              height: 0.01317 * h,
            ),
            Row(
              children: [
                infosec('Email', email),
                SizedBox(
                  width: 0.07639 * w,
                ),
                infosec('Twitter', twitter)
              ],
            )
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
              fontSize: 0.01317 * h,
              color: Colors.white),
        ),
        SizedBox(
          width: 0.005092 * w,
        ),
        Text(
          normalone,
          style: TextStyle(fontSize: 0.01317 * h, color: Colors.white),
        ),
      ],
    );
  }

  Widget infodetailsexperience(String title, String fromdate, String todate,
      String occupation, String info,String company) {
    return Column(
      children: [
        Container(
          height: h * 0.05,
          padding: EdgeInsets.fromLTRB(w * 0.038, h * 0.01317, w * 0.02546, 0),
          width: w,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 0.0197 * h),
              ),
              const Divider(color: Colors.grey, thickness: 1, height: 1),
            ],
          ),
        ),
        Container(
         // height: h * 0.12,
          // color: Colors.amber,
          padding: EdgeInsets.fromLTRB(w * 0.038, 0, w * 0.02546, 0),
          width: double.infinity,
          child: experience(fromdate, todate, occupation, info,company),
        )
      ],
    );
  }

  Widget infodetailseducation(String title, String fromdate, String todate,
      String college, String degree, String field, String gpa) {
    return Column(
      children: [
        Container(
          height: h * 0.05,
          padding: EdgeInsets.fromLTRB(w * 0.038, h * 0.01317, w * 0.02546, 0),
          width: w,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 0.01976 * h),
              ),
              const Divider(color: Colors.grey, thickness: 1, height: 1),
            ],
          ),
        ),
        Container(
          height: h * 0.08,
          // color: Colors.amber,
          padding: EdgeInsets.fromLTRB(w * 0.038, 0, w * 0.02546, 0),
          width: double.infinity,
          child: experienceeducation(
              fromdate, todate, college, degree, field, gpa),
        )
      ],
    );
  }

  Widget experience(String fromdate, String todate, String post, String info,String company) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fromdate + '-' + todate,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.01317 * h),
        ),
        SizedBox(
          width: 0.05093 * w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 0.01712 * h),
            ),
            Text(
              company,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 0.01712 * h),
            ),
            Container(
              height: h * 0.1,
              width: w * 0.7,
              padding: EdgeInsets.fromLTRB(0, 0, 0.02546 * w, 0),
              child: Text(
                info,
                style: TextStyle(
                  fontSize: 0.01317 * h,
                ),
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.01317 * h),
        ),
        SizedBox(
          width: 0.05092 * w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: w * 0.7,
              padding: EdgeInsets.fromLTRB(0, 0, 0.02546 * w, 0),
              child: Text(
                degree + '    ' + field + '    ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 0.01712 * h),
              ),
            ),
            Container(
              width: w * 0.7,
              padding: EdgeInsets.fromLTRB(0, 0, 0.02546 * w, 0),
              child: Text(
                college,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 0.01712 * h),
              ),
            ),
            Container(
                // height: h * 0.1,
                width: w * 0.7,
                padding: EdgeInsets.fromLTRB(0, 0, 0.02546 * w, 0),
                child: Row(
                  children: [
                    const Icon(Icons.grade_rounded),
                    Text('GPA :' + gpa)
                  ],
                )),
          ],
        )
      ],
    );
  }
}