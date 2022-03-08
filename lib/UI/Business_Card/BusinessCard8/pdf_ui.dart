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
      build: (context) => [Center(
      child: Container(
          margin: EdgeInsets.all(4),
          //padding: EdgeInsets.all(4),
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: PdfColors.black, width: 2),
          ),
          width: w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              contact(name, address, city, state,
                  pincode, phone, email, website),
              SizedBox(
                width: w * 0.01,
              ),
              introduction(company, mainrole),
            ],
          )),
    )]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'businesscard.pdf', pdf: pdf);
}
String stylecompany(String address) {
    String addressnew = "";
    for (int i = 0; i < address.length; i++) {
      if (i % 11 != 0) {
        addressnew += address[i];
      }

      if (i % 11 == 0) {
        addressnew += '\n';
        addressnew += address[i];
      }
    }
    return addressnew;
  }

  String stylerole(String address) {
    String addressnew = "";
    for (int i = 0; i < address.length; i++) {
      if (i % 15 != 0) {
        addressnew += address[i];
      }

      if (i % 15 == 0) {
        addressnew += '\n';
        addressnew += address[i];
      }
    }
    return addressnew;
  }

  Widget introduction(String company, String role) {
    print(address.length);
    if (company.length > 11) {
      company = stylecompany(company);
    }
    if (role.length > 15) {
      role = stylerole(role);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            company.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Container(
          child: Text(
            role.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        )
      ],
    );
  }

  String styleaddress(String address) {
    String addressnew = "";
    for (int i = 0; i < address.length; i++) {
      if (i % 25 != 0) {
        addressnew += address[i];
      }

      if (i % 25 == 0) {
        addressnew += '\n';
        addressnew += address[i];
      }
    }
    return addressnew;
  }

  Widget contact(String name, String address, String city, String state,
      String pincode, String phone, String email, String website) {
    String combined = city + ' , ' + state + ' , ' + pincode;
    if (address.length > 25) {
      address = styleaddress(address);
    }
    return Container(
      height: 200,
      width: w * 0.6,
      color: PdfColor.fromHex('#283a48'),
      padding: EdgeInsets.only(left: 5),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name.toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: PdfColors.white,
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            address,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            combined,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            phone,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            email,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            website,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.white,
            ),
          ),
        ],
      ),
    );
  }

