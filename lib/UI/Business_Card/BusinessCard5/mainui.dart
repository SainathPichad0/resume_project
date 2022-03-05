import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
import 'dart:io';

class BusinessCard3UI extends StatefulWidget {
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

  BusinessCard3UI(
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
  _BusinessCard3UIState createState() => _BusinessCard3UIState();
}

class _BusinessCard3UIState extends State<BusinessCard3UI> {
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
                color: Colors.black,
              ),
              label: Text(
                'Generate',
                style: TextStyle(color: Colors.black),
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
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
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
                    color: Colors.black,
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: w * 0.15,
                        color: Colors.yellow,
                        height: 40,
                      ),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      introduction(widget.company, widget.name),
                      SizedBox(
                        width: w * 0.05,
                      ),
                      Container(
                        width: w * 0.40,
                        color: Colors.black,
                        height: 40,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: w * 0.1,
                        color: Colors.black,
                        height: 126,
                      ),
                      contact(
                          widget.mainrole,
                          widget.address,
                          widget.city,
                          widget.state,
                          widget.pincode,
                          widget.phone,
                          widget.email,
                          widget.website)
                    ],
                  ),
                ],
              )
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

  Widget introduction(String company, String name) {
    var namear = name.split(' ');
    String fname = namear[0];
    String lname = namear[1];
    print(widget.address.length);
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
              color: HexColor('#dddc83')),
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
      // color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.redAccent,
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
              color: Colors.redAccent,
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
              color: Colors.redAccent,
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
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
