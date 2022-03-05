import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
import 'dart:io';

class BusinessCard4UI extends StatefulWidget {
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

  BusinessCard4UI(
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
  _BusinessCard4UIState createState() => _BusinessCard4UIState();
}

class _BusinessCard4UIState extends State<BusinessCard4UI> {
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
          margin: EdgeInsets.all(4),
          //padding: EdgeInsets.all(4),
          height: 400,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.black),
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 250,
                color: Colors.white,
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
              introduction(widget.name, widget.mainrole),
              SizedBox(
                height: 15,
              ),
              contact(address, city, state, pincode, phone, email, website)
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

  Widget introduction(String name, String role) {
    print(widget.address.length);

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
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Container(
          child: Text(
            role.toUpperCase(),
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        Container(
          width: 160,
          child: Divider(
            color: Colors.grey,
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
      color: Colors.black,
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
              color: Colors.white,
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
              color: Colors.white,
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
              color: Colors.white,
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
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
