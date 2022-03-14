import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
import 'dart:io';

class Bcard3 extends StatefulWidget {
  String name;
  String email;
  String mainrole;
  String phone;
  String website;
  String company;
  String address;
  String city;
  String state;
  String pincode;

  Bcard3(
      {Key? key,
      required this.name,
      required this.mainrole,
      required this.email,
      required this.phone,
      required this.website,
      required this.company,
      required this.address,
      required this.city,
      required this.state,
      required this.pincode})
      : super(key: key);

  @override
  _Bcard3State createState() => _Bcard3State();
}

class _Bcard3State extends State<Bcard3> {
  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    print('height is' + h.toString() + 'width is' + w.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        actions: [
          TextButton.icon(
              onPressed: () async {
                Widget w = resumebody();
                final pdfFile = await generate(
                  759.27,
                  392.72,
                  widget.name,
                  widget.email,
                  widget.phone,
                  widget.mainrole,
                  widget.address,
                  widget.city,
                  widget.state,
                  widget.pincode,
                  widget.company,
                ); //required This generates a file and stores in pdfFile
                // invoice here represents the values which we have to show

                PdfApi.openFile(pdfFile);
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
              label: Text(
                'Generate',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: resumebody(),
    );
  }

  Widget resumebody() {
    return Center(
      child: Container(
          margin: EdgeInsets.all(4*kh*h),
          //padding: EdgeInsets.all(4),
          height: 200*kh*h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2*kh*h),
          ),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              contact(widget.name, widget.address, widget.city, widget.state,
                  widget.pincode, widget.phone, widget.email, widget.website),
              // Container(
              //   //width: 50,
              //   child: Image.asset('assets/backgroundimage1.jpg')),
              SizedBox(
                width: w * 0.01,
              ),
              introduction(widget.company, widget.mainrole),
            ],
          )),
    );
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
    print(widget.address.length);
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20*kh*h),
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Container(
          child: Text(
            role.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12*kh*h),
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
      color: Colors.black,
      padding: EdgeInsets.only(left: 5*kw*w),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name.toUpperCase(),
            style: TextStyle(
              fontSize: 20*kh*h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Text(
            address,
            style: TextStyle(
              fontSize: 12*kh*h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            combined,
            style: TextStyle(
              fontSize: 12*kh*h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            phone,
            style: TextStyle(
              fontSize: 12*kh*h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            email,
            style: TextStyle(
              fontSize: 12*kh*h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Text(
            website,
            style: TextStyle(
              fontSize: 12*kh*h,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
