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
          child:Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.6,
                  color: PdfColors.grey
                )
              ),
              height: 200,
              width: w,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(company,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: PdfColor.fromHex('#FF1818'),
                          fontSize: 28

                        ),),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: PdfColor.fromHex('#FF1818'),
                                  fontSize: 18

                              ),),
                              Text(mainrole,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: PdfColors.black,
                                  fontSize: 13

                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(phone,style: TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: FontWeight.bold
                                ),),
                               Text(email,style: TextStyle(
                                   color: PdfColors.black,
                                   fontWeight: FontWeight.bold
                               ),)
                              ],
                            ),
                          ),
                          Container(
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(city,style: TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text(address,style: TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(website,style: TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ) ,
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
