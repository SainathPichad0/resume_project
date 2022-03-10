

import 'package:flutter/material.dart';
class Resume1_page extends StatelessWidget {

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

  Resume1_page({
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(5),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   border: Border.all(
            //
            //     width: 1
            //   )
            // ),
            child: Container(
          
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey,
                      width: 1
                  )
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                       padding: EdgeInsets.only(left: 10,right: 5,bottom: 30,top: 30),

                       width: 175*kw*w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),topLeft:  Radius.circular(50)),
                            color: Colors.grey[300],
                          ),

                       child:  Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             CircleAvatar(
                               radius: 20,
                               child: Icon(
                                 Icons.face
                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Text("PROFILE",style: TextStyle(color:Color(0xff169db3) ,fontSize: 15*kh*h,fontWeight: FontWeight.bold),
                             
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Wrap(
                               children: [
                                 Text(descperson,style: TextStyle(

                                 ),)
                               ],
                             ),

                             SizedBox(
                               height: 10,
                             ),
                             Text("CONTACT",style: TextStyle(color:Color(0xff169db3) ,fontSize: 15*kh*h,fontWeight: FontWeight.bold),

                             ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PHONE-"),

                                Text(phone),
                                SizedBox(
                                  height: 15*kh*h,
                                ),
                                Text("EMAIL"),
                                Text(email)
                              ],
                            ),
                             SizedBox(
                               height: 10,
                             ),

                             SizedBox(
                               height: 50*kh*h,
                             )

                           ],
                         ),
                       ),
                     ),
                      SizedBox(
                        width: 10,
                      ),

                      Expanded(child:Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 60*kh*h,
                            ),
                           Wrap(
                             children: [
                               Text(name,style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 28*kh*h,
                                   fontWeight: FontWeight.bold
                               ),)
                             ],
                           ),
                            Text(mainrole),
                            SizedBox(
                              height: 15*kh*h,
                            ),
                            Text("EDUCATION",style: TextStyle(color:Colors.black ,fontSize: 15*kh*h,fontWeight: FontWeight.bold),

                            ),
                            Divider(
                             color:Color(0xff169db3) ,
                            ),
                           Wrap(
                             children: [
                               Text(college,style: TextStyle(
                                   color: Colors.black
                               ),


                               )

                             ],
                           ),
                            Text(fromcollege+"-"+tocollege),
                            Text(gpa),



SizedBox(
                          height: 15*kh*h,
                        ),



                            Text("WORK EXPERIENCE",style: TextStyle(color:Colors.black ,fontSize: 15*kh*h,fontWeight: FontWeight.bold),

                            ),
                            Divider(
                              color:Color(0xff169db3) ,
                            ),
                            Wrap(
                              children: [
                                Text(company,style: TextStyle(
                                    color: Colors.black
                                ),


                                )

                              ],
                            ),
                            Text(fromcompany+"-"+tocompany),
                            Text(roleincompany,style: TextStyle(
                              color: Colors.black
                            ),)


,
                            SizedBox(
                              height: 15*kh*h,
                            ),



                            Text("SKILLS",style: TextStyle(color:Colors.black ,fontSize: 15*kh*h,fontWeight: FontWeight.bold),

                            ),
                            Divider(
                              color:Color(0xff169db3) ,
                            ),
                            for(int i=0;i<skillsList.length;i++)
                              Container(
                                margin: EdgeInsets.only(top: 2*kh*h) ,

                                child: Text(skillsList[i],style: TextStyle(
                                    color: Colors.black
                                ),),
                              )

                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10*kw*w,
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
