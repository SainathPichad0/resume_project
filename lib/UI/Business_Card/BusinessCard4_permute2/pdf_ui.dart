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
          height: 400,
          decoration: BoxDecoration(
              border: Border.all(color: PdfColors.black, width: 2),
              color:  PdfColor.fromHex('#ECECEC')),
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 250,
                color: PdfColors.white,
                alignment: Alignment.center,
                child: Text(
                  company.toUpperCase(),
                  style:
                      TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              introduction(name, mainrole),
              SizedBox(
                height: 15,
              ),
              contact(address, city, state, pincode, phone, email, website)
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

  Widget introduction(String name, String role) {
    print(address.length);

    if (role.length > 15) {
      role = stylerole(role);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text(
            name.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: PdfColors.black),
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Container(
          child: Text(
            role.toUpperCase(),
            style: TextStyle(fontSize: 12, color: PdfColors.black),
          ),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        Container(
          width: 160,
          child: Divider(
            color: PdfColors.grey,
            thickness: 1,
            height: 1,
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

  Widget contact(String address, String city, String state, String pincode,
      String phone, String email, String website) {
    String combined = city + ' , ' + state + ' , ' + pincode;
    if (address.length > 25) {
      address = styleaddress(address);
    }
    address += ' , ' + combined;
    return Container(
      height: 150,
      width: 250,
     // color: PdfColors.black,
      padding: EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            address,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.black,
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
              color: PdfColors.black,
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
              color: PdfColors.black,
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
              color: PdfColors.black,
            ),
          ),
          
        ],
      ),
    );
  }

