import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1/pdf_ui.dart';


class Bcard25page extends StatefulWidget {


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

  Bcard25page(
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
  _Bcard25State createState() => _Bcard25State();
}

class _Bcard25State extends State<Bcard25page> {
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

            border: Border.all(
                color: Colors.black
            )
        ),
        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 150),
        height: 250,
        child: Container(
          color: Color(0xffFFEDED),
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
                                decoration: TextDecoration.underline,
                                letterSpacing: 0.8
                            ),

                          ),
                          Text(mainrole,
                            style: TextStyle(
                              color: Colors.lightBlue,
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

