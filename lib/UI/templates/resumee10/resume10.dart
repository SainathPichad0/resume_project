import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/WIDGETS_REUSABLE/SOCIAL.dart';
import 'package:my_resume/WIDGETS_REUSABLE/profile_edu_work_colum.dart';
import 'package:my_resume/WIDGETS_REUSABLE/skill_colum.dart';

class Resume10page extends StatelessWidget {

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

  Resume10page({
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
  Widget build(BuildContext context) {


   return Scaffold(
      appBar: AppBar(
        title: Text("Resume9"),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(
       //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //NAME TOP ROW HEADER
              Container(
               // margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(border: Border.all(
                  width: 0.3,
                  color: Colors.grey
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(

                        children: [

                          Text("JOHN",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                          ),),
                          Text("SMITH",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40
                          ),),
                          Text("ANDROID DEVELOPER",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),


              Card(
                elevation: 10,

                  child: Container(
                    height:MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,

                   child:Column(
                     children: [
                       Row(
                         children: [
                           Expanded(
                               child: Profile_edu_work(
                                 color: Colors.black,
                                 textcolor: Colors.red,
                                 pcolor: Colors.white,

                                 gpa: gpa,
                                 fromcompany: fromcompany,
                                 abooutcompany: aboutcompany,
                                 collegename: college,
                                 description: descperson,
                                 companyname: company,
                                 fromcoleg:fromcollege,
                                 role: mainrole,
                                 tocolege: tocollege,
                                 tocopany: tocompany,
                               )),
                           Expanded(
                             child: Container(
                                 height: 500,
                                 margin: EdgeInsets.only(right: 10),
                                 color: Colors.white,


                                 child:  Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Container(
                                             margin: EdgeInsets.only(left: 10),
                                             child: Text(
                                               "SKILLS",
                                               style: TextStyle(
                                                   color:Colors.red,
                                                   fontSize: 18,
                                                   fontWeight: FontWeight.bold),
                                             ),
                                           ),
                                           Container(
                                             margin: EdgeInsets.only(left: 10),

                                             child: Skillcolum(
                                               skill1: "Skill",
                                               skill2: "java",
                                               skill3: "huuu",
                                               skill4: "hhhhhhhhhh",
                                               skill5: "hhh",
                                             ),
                                           ),
                                         ],
                                       )
                                     ),



                                     social_colum(
                                       titlecolor: Colors.red,
                                     ),
                                   ],
                                 )
                             )
                             ,
                           ),
                         ],
                       ),
                     ],
                   ),
                  ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
