import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'pdf_api.dart';
// import 'pdf_ui.dart';
import 'dart:io';

class BusinessCard5UI extends StatefulWidget {
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

  BusinessCard5UI(
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
  _BusinessCard5UIState createState() => _BusinessCard5UIState();
}

class _BusinessCard5UIState extends State<BusinessCard5UI> {
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
              onPressed: () {},
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
          margin: EdgeInsets.all(4 * kh * h),
          //padding: EdgeInsets.all(4),
          height: 200 * kh * h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2 * kw * w),
          ),
          width: w,
          child: Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10 * kw * w, top: 10 * kh * h),
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    introduction(widget.name, widget.mainrole),
                    SizedBox(
                      width: w * 0.04,
                    ),
                    contact(
                        widget.address,
                        widget.city,
                        widget.state,
                        widget.pincode,
                        widget.phone,
                        widget.email,
                        widget.website)
                  ],
                ),
              ),
              CustomPaint(
                size: Size(400 * kw * w, 400 * kh * h),
                painter: CurvedPainter(),
              ),
            ],
          )),
    );
  }

  Widget introduction(String name, String role) {
    print(widget.address.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30 * kw * w,
          child: Divider(
            color: Colors.black,
            thickness: 2 * kw * w,
          ),
        ),
        Text(
          name.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18 * kh * h,
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Text(
          role.toUpperCase(),
          style: TextStyle(fontSize: 15 * kh * h),
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
          style: TextStyle(fontSize: 12 * kh * h),
        ),
        Text(
          combined,
          style: TextStyle(fontSize: 12 * kh * h),
        ),
        Container(
          width: 10,
          child: Divider(
            color: Colors.black,
            thickness: 2 * kh * h,
          ),
        ),
        Text(
          phone,
          style: TextStyle(fontSize: 12 * kh * h),
        ),
        Text(
          email,
          style: TextStyle(fontSize: 12 * kh * h),
        ),
        Container(
          width: 10,
          child: Divider(
            color: Colors.black,
            thickness: 2 * kh * h,
          ),
        ),
        Text(
          website,
          style: TextStyle(fontSize: 12 * kh * h),
        ),
      ],
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = HexColor('#275797')
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
