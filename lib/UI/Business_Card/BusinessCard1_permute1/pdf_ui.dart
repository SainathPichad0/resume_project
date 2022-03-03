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
        padding: EdgeInsets.all(4),
        height: 200,
        width: w,
        decoration: BoxDecoration(
          color: PdfColor.fromHex('#e7c7ae'),
          border: Border.all(color: PdfColor.fromHex('#bcb8b7'), width: 9),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              introduction(name, mainrole),
              SizedBox(
                width: w * 0.04,
              ),
              contact(address, city, state, pincode,
                  phone, email, website)
            ],
          )
        ]),
      ),
    )]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'businesscard.pdf', pdf: pdf);
}
Widget introduction(String name, String role) {
    print(address.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30,
          child: Divider(
            color: PdfColors.black,
            thickness: 2,
          ),
        ),
        Text(
          name.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          role.toUpperCase(),
          style: TextStyle(fontSize: 15),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address,
          style: TextStyle(fontSize: 12),
        ),
        Text(
          combined,
          style: TextStyle(fontSize: 12),
        ),
        Container(
          width: 10,
          child: Divider(
            color: PdfColors.black,
            thickness: 2,
          ),
        ),
        Text(
          phone,
          style: TextStyle(fontSize: 12),
        ),
        Text(
          email,
          style: TextStyle(fontSize: 12),
        ),
        Container(
          width: 10,
          child: Divider(
            color: PdfColors.black,
            thickness: 2,
          ),
        ),
        Text(
          website,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

