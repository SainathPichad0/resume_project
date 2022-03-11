import 'dart:io';
import 'package:pdf/pdf.dart';
import 'pdf_api.dart';
import 'package:pdf/widgets.dart'
    as pw; //Note that the widgets like column and all are defined in both material.dart as well as pdf.dart s use either one else conflict might happen
import 'package:pdf/widgets.dart';

// class PdfInvoiceApi {
double h = 0.0;
double w = 0.0;
String name = "Gaurang Shah";
String email = "gaurangshah4@gmail.com";
String mainrole = 'Sales Executive';
String phone = "7754050674";
String website = 'www.linkedin.com/gaurangshah';
String address = 'B-19,Chetan Vihar';
String city = 'Lucknow';
String state = 'Uttar Pradesh';
String pincode = '226024';
String company = 'One Percent';

Future<File> generate(
  double height,
  double width,
  String nameo,
  String emailo,
  String phoneo,
  String mainroleo,
  String addresso,
  String cityo,
  String stateo,
  String pincodeo,
  String companyo,
) async {
  final pdf = Document();
  h = height;
  w = width;
  name = nameo;
  email = emailo;
  phone = phoneo;

  mainrole = mainroleo;

  company = companyo;
  address = addresso;
  city = cityo;
  state = stateo;
  pincode = pincodeo;
  pdf.addPage(MultiPage(
      //means we can add multiple widgets here
      build: (context) => [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: PdfColor.fromHex('#F6F6F6'),
                  border: Border.all(
                    color: PdfColors.black,
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(3),
                  //
                ),
                height: 200 ,
                width: w,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 3, right: 3),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          social_row(
                            
                             address,
                            
                             h,
                             
                             w,
                          ),
                          social_row(
                             
                             phone,
                             
                             h,
                             
                             w,
                          ),
                          social_row(
                             
                             email,
                            
                             h,
                             
                             w,
                          ),
                          social_row(
                             website,
                             
                             h,
                             
                             w
                             
                          ),
                          SizedBox(
                            height: 5 ,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 5 ),
                              height: 10 ,
                              color: PdfColors.orange,
                              width: 80,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10 ,
                          ),
                          
                          Text(
                            company,
                            style: TextStyle(
                                color: PdfColors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 24 ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'businesscard.pdf', pdf: pdf);
}

Widget social_row(
    String val, double h, double w,  ) {
  return Container(
    margin: EdgeInsets.only(top: 10 ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(
          width: 3 ,
        ),
        Text(
          val,
          style: TextStyle(
              color: PdfColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14 ),
        )
      ],
    ),
  );
}
