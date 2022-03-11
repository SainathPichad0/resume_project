import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';
class Bcard14 extends StatelessWidget {


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

  Bcard14(
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
  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Scaffold
      (
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container (
            margin: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color:Color(0xffF6F6F6),
              border: Border.all(
                color: Colors.black,
                width: 0.1
                ,

              ),
              borderRadius: BorderRadius.circular(3),
              //

            )  ,
            height: 270*kh*h,
            width: double.infinity,
            child: Row(

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    social_row(iconData: CupertinoIcons.location,
                        val: address,
                        kh: kh, h: h, kw: kw, w: w, ),

                    social_row(iconData: CupertinoIcons.phone,
                        val: phone,
                        kh: kh, h: h, kw: kw, w: w,)
                    ,
                    social_row(iconData: Icons.email,
                        val: email,
                        kh: kh, h: h, kw: kw, w: w, ),
                    social_row(iconData: MdiIcons.earth,
                      val: website,
                      kh: kh, h: h, kw: kw, w: w, ),
                    SizedBox(
                      height: 5*kh*h,
                    ),

                 Expanded(
                   child: Container(
                     margin: EdgeInsets.only(top: 5*kh*h),
                     height: 10*kh*h,
                     color: Colors.black,
                     width: 80,
                   ),
                 )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10*kh*h,
                    ),
                    Icon(
                      MdiIcons.officeBuildingCogOutline,
                      size: 40*kh*h,
                    ),
                    Expanded(child: Text(company,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25*kh*h
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

class social_row extends StatelessWidget {
   social_row({

    required this.kh,
    required this.h,
    required this.kw,
    required this.w,

    required this.iconData,
    required this.val
  });

  final double kh;
  final double h;
  final double kw;
  final double w;

  IconData iconData;
  String val;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10*kh*h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 10*kh*h,
            backgroundColor: Colors.blue,
            child: Icon(
              iconData,
              color: CupertinoColors.white,
              size: 15*kh*h,
            ),

          ),
          SizedBox(
            width: 3*kw*w,
          ),
          Text(val,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14*kh*h),)

        ],
      ),
    );
  }
}
