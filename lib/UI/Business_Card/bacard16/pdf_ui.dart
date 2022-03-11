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
                height: 270,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                company,
                                style: TextStyle(
                                    fontSize: 22,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: PdfColors.black),
                              ),
                              
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          height: 4,
                          width: double.infinity,
                          color: PdfColors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    color: PdfColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                mainrole,
                                style: TextStyle(color: PdfColors.red),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Text(
                                phone,
                                style: TextStyle(color: PdfColors.black),
                              ),
                              Text(
                                email,
                                style: TextStyle(color: PdfColors.black),
                              ),
                              Text(
                                website,
                                style: TextStyle(color: PdfColors.red),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
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
