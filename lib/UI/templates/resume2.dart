import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1/pdf_ui.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';
import 'package:my_resume/WIDGETS_REUSABLE/SOCIAL.dart';
import 'package:my_resume/WIDGETS_REUSABLE/profile_edu_work_colum.dart';

class Resume2 extends StatefulWidget {

  String name;
  String email;
  String phone;
  String linkedin;
  String mainrole;
  String github;
  String descperson;
  String company;
  String roleincompany;
  String aboutcompany;
  String fromcompany;
  String tocompany;
  String college;
  String fromcollege;
  String tocollege;
  String degree;
  String specialization;
  String gpa;
  List<String> skillsList;

  Resume2({
    Key? key,
    required this.name,
    required this.email,
    required this.mainrole,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.descperson,
    required this.company,
    required this.roleincompany,
    required this.aboutcompany,
    required this.fromcompany,
    required this.tocompany,
    required this.college,
    required this.fromcollege,
    required this.tocollege,
    required this.degree,
    required this.specialization,
    required this.gpa,
    required this.skillsList,
  }) : super(key: key);

  @override
  _Resume2State createState() => _Resume2State();
}

class _Resume2State extends State<Resume2> {
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
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              width: 500*kw*w,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              color: Color(0xff355E92),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Text(
                        widget.name
                        ,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30*kh*h,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        widget.mainrole,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15*kh*h,
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
                    child: Profile_edu_work(
                      color: Colors.white,
                      textcolor:   Color(0xff355E92),
                      pcolor: Colors.black,
                      gpa: widget.gpa,
                      fromcompany: widget.fromcompany,
                      abooutcompany: widget.aboutcompany,
                      collegename: widget.college,
                      description: widget.descperson,
                      companyname: widget.company,
                      fromcoleg: widget.fromcollege,
                      role: widget.mainrole,
                      tocolege: widget.tocollege,
                      tocopany: widget.tocompany,
                    )),
                Expanded(
                    child: Container(
                  height: 500*kh*h,
                  margin: EdgeInsets.only(right: 10),
                  color: Color(0xffB8CCE4),
                      
                
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

                                    fontSize: 18*kh*h,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Color(0xff169db3),
                              ),
                              for(int i=0;i<skillsList.length;i++)
                                Wrap(
                                  children: [
                                    Text(
                                      skillsList[i],
                                      style: TextStyle(color: Colors.black),
                                    ),

                                  ],
                                ),
                            ],
                          ),
                        ),


                       social_colum(
                         titlecolor:   Color(0xffB8CCE4),
                         phone: widget.phone,
                         email: widget.email,
                         github: widget.github,
                         linedinn: widget.linkedin,
                       ),
                      ],
                    )
                    )
                ,
                ),
              ],
            ),
            SizedBox(
              height: 30*kh*h,
            )
          ],
        ),
      ),
    );
  }
}
