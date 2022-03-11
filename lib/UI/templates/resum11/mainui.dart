import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1/pdf_ui.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';
import 'package:my_resume/WIDGETS_REUSABLE/SOCIAL.dart';
import 'package:pdf/pdf.dart';

class Resume11page extends StatefulWidget {
  const Resume11page({Key? key}) : super(key: key);

  @override
  _Resume11pageState createState() => _Resume11pageState();
}

class _Resume11pageState extends State<Resume11page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
                  width: 500,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  color: Colors.pink[200],
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                "JOHN SMITH",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30,
                                    fontStyle:FontStyle.italic,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                "Android Developer",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      )),
                )),
            Row(
              children: [
                Expanded(
                    child: Container(
                      height: 500,
                      margin: EdgeInsets.only(left: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Wrap(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "PROFILE",
                                style: TextStyle(
                                    color: Color(0xff355e92),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Color(0xff169db3),
                              ),
                            ],
                          ),
                          Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam "),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "EDUCATION",
                            style: TextStyle(
                                color: Color(0xff355e92),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Color(0xff169db3),
                          ),
                          Wrap(
                            children: [
                              Text(
                                "[School Name]",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                          Text("2017-2021"),
                          Text("8.68 GPA"),
                          Wrap(
                            children: [
                              Text(
                                "[School Name]",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                          Text("2017-2021"),
                          Text("8.68 GPA"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "WORK EXPERIENCE",
                            style: TextStyle(
                                color: Color(0xff355e92),

                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Color(0xff169db3),
                          ),
                          Wrap(
                            children: [
                              Text(
                                "[Company Name]",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                          Text("2017-2021"),
                          Text("UI Designer"),
                          SizedBox(
                            height: 15,
                          ),
                          // Text(
                          //   "SKILLS",
                          //   style: TextStyle(
                          //       color: Colors.black,
                          //       fontSize: 15,
                          //       fontWeight: FontWeight.bold),
                          // ),
                          // Divider(
                          //   color: Color(0xff169db3),
                          // ),
                          // Text("SKILL1"),
                          // Text("SKILL1"),
                          // Text("SKILL1"),
                        ],
                      ),
                    )),
                Expanded(
                  child: Container(
                      height: 500,
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.blueAccent[100],


                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SKILLS",
                                  style: TextStyle(
                                      color:Colors.black,

                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  color: Color(0xff169db3),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "[JAVA]",
                                      style: TextStyle(color: Colors.black),
                                    ),

                                  ],
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "[JAVA]",
                                      style: TextStyle(color: Colors.black),
                                    ),

                                  ],
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "[JAVA]",
                                      style: TextStyle(color: Colors.black),
                                    ),

                                  ],
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "[JAVA]",
                                      style: TextStyle(color: Colors.black),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),


                          social_colum(
                            linedinn: linkedin,
                            github: github,
                            email:"hhh",
                            phone:"houwe",


                            titlecolor:    Color(0xffB8CCE4),
                          ),
                        ],
                      )
                  )
                  ,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

