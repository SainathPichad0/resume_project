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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: w * 0.1,
                    color: PdfColors.black,
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: w * 0.15,
                        color: PdfColors.yellow,
                        height: 40,
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      introduction(company, name),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      Container(
                        width: w * 0.40,
                        color: PdfColors.black,
                        height: 40,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: w * 0.1,
                        color: PdfColors.black,
                        height: 126,
                      ),
                      contact(
                          mainrole,
                          address,
                          city,
                          state,
                          pincode,
                          phone,
                          email,
                          website)
                    ],
                  ),
                ],
              )
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

  Widget introduction(String company, String name) {
    var namear = name.split(' ');
    String fname = namear[0];
    String lname = namear[1];
    print(address.length);
    if (company.length > 11) {
      company = stylecompany(company);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              fname.toUpperCase() + '  ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              lname.toUpperCase(),
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          company.toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: PdfColor.fromHex('#dddc83')),
        ),
      ],
    );
  }

  String styleaddress(String address) {
    String addressnew = "";
    for (int i = 0; i < address.length; i++) {
      if (i % 90 != 0) {
        addressnew += address[i];
      }

      if (i % 90 == 0) {
        addressnew += '\n';
        addressnew += address[i];
      }
    }
    return addressnew;
  }

  Widget contact(String role, String address, String city, String state,
      String pincode, String phone, String email, String website) {
    String combined = city + ' , ' + state + ' , ' + pincode;
    if (address.length > 90) {
      address = styleaddress(address);
    }
    address += ','+combined;
    return Container(
      height: 120,
      width: w * 0.6,
      // color: PdfColors.black,
       padding: EdgeInsets.only(left: 5,top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            role.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          
          Text(
            address,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: PdfColors.redAccent,
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Text(
            phone,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: PdfColors.redAccent,
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Text(
            email,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: PdfColors.redAccent,
            ),
          ),
          SizedBox(
            height: h * 0.005,
          ),
          Text(
            website,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: PdfColors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
