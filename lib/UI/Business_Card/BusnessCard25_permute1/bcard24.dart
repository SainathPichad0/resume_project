import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1/pdf_ui.dart';


class Bcard24 extends StatefulWidget {


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

  Bcard24(
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
  _Bcard24State createState() => _Bcard24State();
}

class _Bcard24State extends State<Bcard24> {
  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.purple,
),
    body: Container(
      decoration: BoxDecoration(
        color: Color(0xffcec9bf),
        border: Border.all(
          color: Colors.black
        )
      ),
      margin: EdgeInsets.symmetric(horizontal: 5*kw*w,vertical: 150*kh*h),
      height: 250*kh*h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
        child: Row(
          children: [
         Expanded(
           flex: 4,
           child: Column
             (
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Column(

                   children: [
                     Text(widget.name,
                       style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20*kh*h,
                           letterSpacing: 0.8
                       ),

                     ),
                     Text(mainrole,
                       style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 15*kh*h,

                       ),


                     ),
                   ],
                 ),
               )
,
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    MdiIcons.officeBuilding,
                    color: Colors.blue,
                  ),
                  Text(widget.company),

                  Text(widget.address)
                ],
              ),
            )
             ],
           ),
         ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(website,style:TextStyle(
                    color: Colors.black
                ),),
                Row(
                  children: [
                    Text("mob:",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    Text(phone,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),

                  ],
                ),

                Row(
                  children: [
                    Text("email:",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),),
                    Wrap(
                      children: [
                        Text(email,style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    )

                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}

