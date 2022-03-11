import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Bcard17 extends StatelessWidget {


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

  Bcard17(
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
          child:Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.6*kw*w,
                  color: Colors.grey
                )
              ),
              height: 200*kh*h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(company,style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFF1818),
                          fontSize: 28*kh*h

                        ),),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFF1818),
                                  fontSize: 18*kh*h

                              ),),
                              Text(mainrole,style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 13*kh*h

                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5*kw*w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(phone,style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),),
                               Text(email,style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold
                               ),)
                              ],
                            ),
                          ),
                          Container(
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(city,style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text(address,style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child:    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(website,style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ) ,
        )
    );
  }
}
