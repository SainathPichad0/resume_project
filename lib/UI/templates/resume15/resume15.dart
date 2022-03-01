import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';


class Resume15 extends StatelessWidget {




  //
  //
  //
  // String? name;
  // String ?email;
  // String? phone;
  // String ?linkedin;
  // String ?mainrole;
  // String ?github;
  // String ?descperson;
  // String? company;
  // String? roleincompany;
  // String? aboutcompany;
  // String? fromcompany;
  // String? tocompany;
  // String ?college;
  // String? fromcollege;
  // String? tocollege;
  // String ?degree;
  // String ?specialization;
  // String ?gpa;
  // List<String>? skillsList;
  // Resume15
  //     ({required this.name,
  //   required this.email,
  //   required this.mainrole,
  //   required this.phone,
  //   required this.linkedin,
  //   required this.github,
  //   required this.descperson,
  //   required this.company,
  //   required this.roleincompany,
  //   required this.aboutcompany,
  //   required this.fromcompany,
  //   required this.tocompany,
  //   required this.college,
  //   required this.fromcollege,
  //   required this.tocollege,
  //   required this.degree,
  //   required this.specialization,
  //   required this.gpa,
  //   required this.skillsList,});
  //

  @override
  Widget build(BuildContext context) {
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
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("Sainath Pichad",
                      style: TextStyle(
                        fontSize: 30
                      ) ,
                      ),
                      Text("Graphic Designer",
                        style: TextStyle(
                            fontSize: 15
                        ) ,
                      ),
                      Row(
                        children: [
                          Icon(MdiIcons.linkedin,
                            size: 15,
                          ),
                          Text("linkedin.com/gaurangshah",
                            style: TextStyle(
                                fontSize: 10
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
                            fontSize: 13
                        ) ,),
                      Text("1234567890",style: TextStyle(
                        fontSize: 10
                      ),),
                      Text("saipichad7@gmail.con")
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
                    fontSize: 13,
                    color: Colors.black26
                  ),
                  ),
                  
                  Wrap(
                    children: [
                      Text("Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt.",
                      style: TextStyle(
                        fontSize: 23,
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
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Experience"),
                  Container(height: 3,
                    width: 230,
                    margin: EdgeInsets.symmetric(vertical: 10),

                    color: Colors.black87,
                  ),
                  
                  Row(

                    children: [
                      Text("2017-2020",style: TextStyle(
                        fontSize: 10
                      ),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Senior Graphic Designer",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12
                          ),)
                         , Text("Imperial Bank",style: TextStyle(

                              color: Colors.black,
                              fontSize: 12
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
