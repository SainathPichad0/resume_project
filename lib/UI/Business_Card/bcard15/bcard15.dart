import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'pdf_api.dart';
import 'pdf_ui.dart';
class Bcard15 extends StatefulWidget {


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

  Bcard15(
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
  State<Bcard15> createState() => _Bcard15State();
}

class _Bcard15State extends State<Bcard15> {
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
        title: Text('Hello'),
        actions: [
          TextButton.icon(
              onPressed: () async {
                
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
                          Icon(CupertinoIcons.star_fill,color: Colors.amber,),

                          Text(widget.company,style: TextStyle(
                              fontSize: 22*kh*h,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),),

                          Icon(CupertinoIcons.star_fill,color:Colors.amber,)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50*kh*h),
                      height: 4*kh*h,
                      width: double.infinity,
                      color: Colors.lightBlueAccent,
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 50*kh*h),
                      child: Column(
                        children: [
                          Text(widget.name,style: TextStyle(
                              color: Colors.black,
                              fontSize: 16*kh*h,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(widget.mainrole,style: TextStyle(
                              color: Colors.lightBlueAccent
                          ),),
                          SizedBox(
                            height: 17*kh*h,
                          ),
                          Text(widget.phone,style: TextStyle(
                              color: Colors.black
                          ),),
                          Text(widget.email,style: TextStyle(
                              color: Colors.black
                          ),),
                          Text(widget.website,style: TextStyle(
                              color: Colors.lightBlueAccent
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
