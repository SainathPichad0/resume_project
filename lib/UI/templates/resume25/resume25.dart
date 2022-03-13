import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
class Resume25UI extends StatefulWidget {
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

  Resume25UI({
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
  _Resume25UIState createState() => _Resume25UIState();
}

class _Resume25UIState extends State<Resume25UI> {



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
     appBar: AppBar(
        title: Text('Hello'),
        actions: [
          TextButton.icon(
              onPressed: () async {
                //Widget w = resumebody();
                final pdfFile = await generate(
                    759.27,
                    392.72,
                    widget.name,
                    widget.email,
                    widget.phone,
                    widget.linkedin,
                    widget.mainrole,
                    widget.github,
                    widget.descperson,
                    widget.company,
                    widget.roleincompany,
                    widget.aboutcompany,
                    widget.fromcompany,
                    widget.tocompany,
                    widget.college,
                    widget.fromcollege,
                    widget.tocollege,
                    widget.degree,
                    widget.specialization,
                    widget.gpa,
                    widget
                        .skillsList); //required This generates a file and stores in pdfFile
                //invoice here represents the values which we have to show

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
      body: SafeArea(
        child: Column(
          children: [
            Container(

              // height: 70 * MediaQuery.of(context).size.height / 600,
              height: 100*kh*h,

              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                children: [
               Container(

               child: Row(
                 children: [

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
                                 widget.name,
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     decoration: TextDecoration.underline,
                                     color: Color(0xff42A78E),
                                     fontSize: 20*kh*h),
                               ),
                               SizedBox(
                                 width: 3,
                               ),



                             ],
                           ),
                           SizedBox(
                             height: 3,
                           ),

                           Text(
                             widget.mainrole,
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
                      margin: EdgeInsets.only(left: 15*kw*w),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10*kh*w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                social_row_25(
                                    icon: Icons.phone, textof: widget.phone),
                                social_row_25(
                                    icon: Icons.email,
                                    textof: widget.email),
                                social_row_25(
                                    icon: MdiIcons.linkedin,
                                    textof: widget.linkedin),
                                social_row_25(
                                    icon: MdiIcons.github,
                                    textof: widget.github)
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
                         height: 20*kh*h,
                       ),
                       Text(widget.specialization,style: TextStyle(
                           color: Colors.black,
                           fontSize: 10*kh*h,
                           fontWeight: FontWeight.bold
                       ),),
                       SizedBox(
                         height: 6,
                       ),


                       Text(widget.college,style: TextStyle(
                         color: Colors.black,
                         fontSize: 10*kh*h,

                       ),),
                       SizedBox(
                         height: 6,
                       ),
                       Text(widget.fromcollege+"-"+widget.tocollege,style: TextStyle(
                         color: Colors.black,
                         fontSize: 10*kh*h,

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
                            height: 20*kh*h,
                          ),

                          for(int i=0;i<skillsList.length;i++)
                            skilll_row(skill: skillsList[i]),
                          //
                          // skilll_row(skill: skillsList[0]),
                          // skilll_row(skill: skillsList[1] ),
                          // skilll_row(skill:  skillsList[2]),
                          // skilll_row(skill: "AI/ML"),
                          // skilll_row(skill: "PROBLEM SOLVING"),



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
                              Text(widget.descperson,
                              style: TextStyle(
                                fontSize: 11*kh*h
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
                                Text(widget.roleincompany.toUpperCase(),style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11 * kh * h,

                                ),),
                               Row(
                                 children: [
                                   Text(widget.company,style: TextStyle(
                                     color: Colors.black,


                                     fontSize: 12*kh*h,

                                   ),),

                                   SizedBox(
                                     width: 4*kw*w,
                                   ),
                                   Text(widget.fromcompany+"-"+widget.tocompany,style: TextStyle(
                                     color: Colors.black,
                                     decoration: TextDecoration.underline,
                                     fontSize: 10*kh*h,

                                   ),),

                                 ],
                               ),
                                SizedBox(
                                  height: 10,
                                ),

                                Text(widget.aboutcompany,style: TextStyle(
                                  fontSize: 11*kh*h
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
