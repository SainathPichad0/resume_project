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
          margin: EdgeInsets.all(4 ),
          padding: EdgeInsets.all(9 ),
          height: 200 ,
          width: w,
          decoration: BoxDecoration(
            color: PdfColors.white,
            border: Border(
              top: BorderSide(
                width: 9 ,
                color: PdfColor.fromHex('#68a5df'),
              ),
              left: BorderSide(
                width: 2 ,
                color: PdfColors.grey,
              ),
              right: BorderSide(
                width: 2 ,
                color: PdfColors.grey,
              ),
              bottom: BorderSide(
                width: 2 ,
                color: PdfColors.grey,
              ),
            ),
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              introduction(name, mainrole),
              SizedBox(width: w*0.01,),
              Center(
                child: Container(
                  width: w * 0.04,
                  height: h * 0.1,
                  alignment: Alignment.center,
                  child: VerticalDivider(
                    color: PdfColors.black,
                    thickness: 1,
                    //width: 1,
                  ),
                ),
              ),
              SizedBox(width: w*0.01,),

              contact(address, city, state, pincode,
                  phone, email, website)
            ],
          )),
    )]
      //footer: (context) => buildFooter(invoice),
      ));
  return PdfApi.saveDocument(name: 'businesscard.pdf', pdf: pdf);
}
 Widget introduction(String name, String role) {
    print(address.length);
    var s = name.split(' ');
    String fname = s[0];
    String lname = s[1];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fname.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25 ,
            letterSpacing: 1
          ),
        ),
        SizedBox(
          height: h * 0.005,
        ),
        Text(
          lname.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25 ,
            letterSpacing: 1
          ),
        ),
        Text(
          role.toUpperCase(),
          style: TextStyle(fontSize: 15 ),
        )
      ],
    );
  }

  String styleaddress(String address) {
    String addressnew = "";
    for (int i = 0; i < address.length; i++) {
      if (i % 35 != 0) {
        addressnew += address[i];
      }

      if (i % 35 == 0) {
        addressnew += '\n';
        addressnew += address[i];
      }
    }
    return addressnew;
  }

  Widget contact(String address, String city, String state, String pincode,
      String phone, String email, String website) {
    String combined = city + ' , ' + state + ' , ' + pincode;
    address = address + ' , ' + combined;
    if (address.length > 35) {
      address = styleaddress(address);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          address,
          style: TextStyle(fontSize: 12 ),
        ),
        Text(
          phone,
          style: TextStyle(fontSize: 12 ),
        ),
        Text(
          email,
          style: TextStyle(fontSize: 12 ),
        ),
        Text(
          website,
          style: TextStyle(fontSize: 12 ),
        ),
      ],
    );
  }
