import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';
class Bcard16 extends StatelessWidget {


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

  Bcard16(
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
           child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Center(
               child: Column(
                 children: [
                         Container(
                           child: Row
                             (
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Icon(CupertinoIcons.star_fill,color: Colors.red,),

                               Text(company,style: TextStyle(
                                 fontSize: 22*kh*h,
                                 letterSpacing: 1,
                                 fontWeight: FontWeight.w700,
                                 color: Colors.black
                               ),),

                               Icon(CupertinoIcons.star_fill,color: Colors.red,)
                             ],
                           ),
                         ),
                   Container(
                     margin: EdgeInsets.only(top: 50*kh*h),
                     height: 4*kh*h,
                     width: double.infinity,
                     color: Colors.red,
                   ),

                   Container(
                     margin: EdgeInsets.only(top: 50*kh*h),
                 child: Column(
                   children: [
                     Text(name,style: TextStyle(
                         color: Colors.black,
                       fontSize: 16*kh*h,
                       fontWeight: FontWeight.bold
                     ),),
                     Text(roleincompany,style: TextStyle(
                         color: Colors.red
                     ),),
                     SizedBox(
                       height: 17*kh*h,
                     ),
                     Text(phone,style: TextStyle(
                       color: Colors.black
                     ),),
                     Text(email,style: TextStyle(
                         color: Colors.black
                     ),),
                     Text(website,style: TextStyle(
                         color: Colors.red
                     ),)
                   ],
                 ),
                   )
                 ],
               ),
             ),
           ),
          ),
        )
    );
  }
}
