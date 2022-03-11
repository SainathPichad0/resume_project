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
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColors.black, width: 0.1)),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 150),
                height: 280,
                width: w,
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: PdfColor.fromHex('#F7F7F7')),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: PdfColors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                mainrole,
                                style: TextStyle(color: PdfColors.red),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 4),
                                height: 5,
                                color: PdfColors.green,
                                width: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(color: PdfColors.purple),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              company,
                              style: TextStyle(
                                color: PdfColors.white,
                              ),
                            ),
                            Text(
                              address,
                              style: TextStyle(
                                color: PdfColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(color: PdfColors.black),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          phone,
                                          style: TextStyle(
                                            color: PdfColors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          email,
                                          style: TextStyle(
                                            color: PdfColors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
