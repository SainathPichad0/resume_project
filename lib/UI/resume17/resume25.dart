import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Resume25UI extends StatefulWidget {
  // String name;
  // String email;
  // String phone;
  // String linkedin;
  // String mainrole;
  // String github;
  // String descperson;
  // String company;
  // String roleincompany;
  // String aboutcompany;
  // String fromcompany;
  // String tocompany;
  // String college;
  // String fromcollege;
  // String tocollege;
  // String degree;
  // String specialization;
  // String gpa;
  // List<String> skillsList;
  //
  // Resume25UI({
  //   Key? key,
  //   required this.name,
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
  //   required this.skillsList,
  // }) : super(key: key);

  @override
  _Resume25UIState createState() => _Resume25UIState();
}

class _Resume25UIState extends State<Resume25UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(

              height: 70 * MediaQuery.of(context).size.height / 600,
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                children: [
               Container(

               child: Row(
                 children: [
                   Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CustomPaint(
                           painter: OpenPainter(),
                         ),
                         CustomPaint(
                           painter: OpenPainterr(),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     width: 15,
                   ),
                   Container(
                     child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
//todo name row
                           Row(
                             children: [
//TODO FIRST NAME CAMPTIAL
                               Text(
                                 "OLIVER",
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     decoration: TextDecoration.underline,
                                     color: Color(0xff42A78E),
                                     fontSize: 20),
                               ),
                               SizedBox(
                                 width: 3,
                               ),

//LAST NAME//TODO LAST NAME CAP
                               Wrap(
                                 children: [
                                   Text(
                                     "CHARTER",
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         decoration:
                                         TextDecoration.underline,
                                         decorationColor:
                                         Color(0xff42A78E),
                                         color: Colors.black87,
                                         fontSize: 20),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 3,
                           ),

                           Text(
                             "WEB DEVELOPER",
                             style:
                             TextStyle(letterSpacing: 1, fontSize: 12),
                           )
//todo role
                         ]),
                   ),
                 ],
               ),
               ),
                  //todo mphone github linked email
                  Expanded(
         child: Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 70 * MediaQuery.of(context).size.height / 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                social_row_25(
                                    icon: Icons.phone, textof: "7875231055"),
                                social_row_25(
                                    icon: Icons.email,
                                    textof: "saipichad7@gmail.com"),
                                social_row_25(
                                    icon: MdiIcons.linkedin,
                                    textof: "linedin.com/sai"),
                                social_row_25(
                                    icon: MdiIcons.github,
                                    textof: "saipichad7@github.com")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Expanded(
                        child: Column(

                      children: [

                 Container(
                   child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       titletext('EDUCATION')





                       ,
                       SizedBox(
                         height: 20,
                       ),
                       Text("Computer And Communication Engineering",style: TextStyle(
                           color: Colors.black,
                           fontSize: 10,
                           fontWeight: FontWeight.bold
                       ),),
                       SizedBox(
                         height: 6,
                       ),


                       Text("Pune Institude of computer technology",style: TextStyle(
                         color: Colors.black,
                         fontSize: 10,

                       ),),
                       SizedBox(
                         height: 6,
                       ),
                       Text("22019-2023",style: TextStyle(
                         color: Colors.black,
                         fontSize: 10,

                       ),),

                     ],
                   ),
                 ),
                        SizedBox(
                          height: 20,
                        ),

                        Divider(
                          color: Color(0xff42A78E),
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          titletext("KEY SKILLS"),
                          SizedBox(
                            height: 20,
                          ),

                          skilll_row(skill: "JAVA"),
                          skilll_row(skill: "PYTHON"),
                          skilll_row(skill: "HACKING"),
                          skilll_row(skill: "AI/ML"),
                          skilll_row(skill: "PROBLEM SOLVING"),



                        ],
                      ),
                    )












                      ],
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          titletext("CAREER SUMMARY"),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            children: [
                              Text("Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt. Sunt consectetur cupidatat fugiat occaecat velit reprehenderit voluptate est proident proident tempor aute mollit. Duis ad eiusmod sit Lorem eu amet ea ullamco velit incididunt vol",
                              style: TextStyle(
                                fontSize: 11
                              ),)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            color: Color(0xff42A78E),
                            thickness: 2,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          titletext("EXPERIENCE"),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Frontend Flutter Developer".toUpperCase(),style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,

                                ),),
                               Row(
                                 children: [
                                   Text("One Percent",style: TextStyle(
                                     color: Colors.black,


                                     fontSize: 12,

                                   ),),

                                   SizedBox(
                                     width: 4,
                                   ),
                                   Text("2012-2019",style: TextStyle(
                                     color: Colors.black,
                                     decoration: TextDecoration.underline,
                                     fontSize: 10,

                                   ),),

                                 ],
                               ),
                                SizedBox(
                                  height: 10,
                                ),

                                Text("Lorem enim non est sunt ea deserunt mollit mollit qui id ex enim irure. Incididunt labore occaecat id laboris elit officia. Aliqua Lorem labore sint enim proident ea aliquip magna minim duis sint est.",style: TextStyle(
                                  fontSize: 10
                                ),)
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class skilll_row extends StatelessWidget {
 String skill;
 skilll_row({
   required this.skill
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
            color: Color(0xff42A78E),
            size: 11,
          ),
          SizedBox(
            width: 4,
          ),
          Text(skill,style: TextStyle(
            fontSize: 10,letterSpacing: 1
          ),)
        ],
      ),
    );
  }
}

class social_row_25 extends StatelessWidget {
  IconData icon;
  String textof;
  social_row_25({required this.icon, required this.textof});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 2),
      child: Row(
        children: [
          CircleAvatar(
              radius: 10,
              backgroundColor: Color(0xff42A78E),
              child: Icon(
                icon,
                size: 13,
              )),
          SizedBox(
            width: 5,
          ),
          Text(textof)
        ],
      ),
    ));
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff42A78E)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(5, 8), 4, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainterr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.black87
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(5, 20), 4, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

titletext(String x) {
  return Text(
    x,
    style: TextStyle(
      letterSpacing: 1,
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Color(0xff42A78E),
    ),
  );
}
