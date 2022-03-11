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
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: PdfColors.black)),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 150),
              height: 250,
              width: w,
              child: Container(
                color: PdfColor.fromHex('#FFEDED'),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      color: PdfColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      decoration: TextDecoration.underline,
                                      letterSpacing: 0.8),
                                ),
                                Text(
                                  mainrole,
                                  style: TextStyle(
                                      color: PdfColors.lightBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text(company), Text(address)],
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          website,
                          style: TextStyle(color: PdfColors.black),
                        ),
                        Row(
                          children: [
                            Text(
                              "mob:",
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              phone,
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "email:",
                              style: TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Wrap(
                              children: [
                                Text(
                                  email,
                                  style: TextStyle(
                                      color: PdfColors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'businesscard.pdf', pdf: pdf);
}

Widget rowofsocial(String val) {
  return Container(
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text(val)
      ],
    ),
  );
}
