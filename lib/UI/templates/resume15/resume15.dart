import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';


class Resume15 extends StatelessWidget {


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

  Resume15({
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
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("  "),
        actions: [
          IconButton(onPressed: null,
              icon: Icon(
                Icons.add
                    ,
                size: 30,

              ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(name,
                      style: TextStyle(
                        fontSize: 30*kh*h
                      ) ,
                      ),
                      Text(mainrole,
                        style: TextStyle(
                            fontSize: 15*kh*h
                        ) ,
                      ),
                      Row(
                        children: [
                          Icon(MdiIcons.linkedin,
                            size: 15*kh*h,
                          ),
                          Text(linkedin,
                            style: TextStyle(
                                fontSize: 10*kh*h
                            )
                          )
                        ],
                      )
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CONTACT",

                        style: TextStyle(
                            fontSize: 13*kh*h
                        ) ,),
                      Text(phone,style: TextStyle(
                        fontSize: 10*kh*h
                      ),),
                      Text(email,

                        style: TextStyle(
                            fontSize: 10*kh*h
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),

            Container(height: 3,
            width: double.infinity,

            color: Colors.black54,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SUMMARY",
                  style: TextStyle(
                    fontSize: 13*kh*h,
                    color: Colors.black26
                  ),
                  ),
                  
                  Wrap(
                    children: [
                     // Text("Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt.",

                     Text(
                       descperson
                       ,style: TextStyle(
                        fontSize: 20*kh*h,
                        letterSpacing: 0.5,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),

            Container(height: 3,
              width: double.infinity,

              color: Colors.black54,
            ),

            Container(
              margin: EdgeInsets.all(20*kh*h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Experience"),
                  Container(height: 3,
                    width: 230*kw*w,
                    margin: EdgeInsets.symmetric(vertical: 10),

                    color: Colors.black87,
                  ),
                  
                  Row(

mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Text(fromcompany+"-"+tocompany,style: TextStyle(
                        fontSize: 10*kh*h
                      ),),
                      SizedBox(
                        width:15*kh*h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(roleincompany,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12*kh*h
                          ),)
                         , Text(company,style: TextStyle(

                              color: Colors.black,
                              fontSize: 12*kh*h
                          ),),
                          
                       
                        ],
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
